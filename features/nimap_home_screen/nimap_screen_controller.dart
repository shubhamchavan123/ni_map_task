import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';



import 'package:http/http.dart' as http;
import 'package:nimap/core/constants.dart';
import 'package:nimap/core/local_storage/hive_storage/hive_storage_repo.dart';


import 'data/model/nimap_response_model.dart';
import 'domain/nimap_post_use_case.dart';
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart'; // For checking network connectivity
import 'package:flutter/foundation.dart';


class NiMapController extends ChangeNotifier {
  bool isFirstTime = true;
  var errorMessage = '';
  bool isSummaryEmpty = true;
  var token = '';
  bool isLoading = false;

  List<Records>? timelineHomeList = [];

  final NimapPostUseCase _homepostUseCase = NimapPostUseCase();

  NimapResponseModel? getResponse = NimapResponseModel();

  NiMapController() {
    initSetup();
    notifyListeners();
  }

  void initSetup() async {
    await Hive.initFlutter();
    var mvBox = await Hive.openBox(HiveStorageRepo.boxKnackbe);

    token = mvBox.get(HiveStorageRepo.keyToken) ?? '';
    debugPrint('token home $token');

    isLoading = true;

    // Load data from Hive initially in case there's no network
    await loadDataFromHive();

    // Check network connectivity and fetch data
    await fetchHomeSummary();
    isLoading = false;
    notifyListeners();
  }

  Future<void> loadDataFromHive() async {
    var mvBox = await Hive.openBox(HiveStorageRepo.boxKnackbe);
    String? storedData = mvBox.get('homeSummary');

    if (storedData != null) {
      try {
        var decodedJson = jsonDecode(storedData);
        getResponse = NimapResponseModel.fromJson(decodedJson);
        timelineHomeList = getResponse?.data?.records;
        debugPrint('Loaded data from Hive successfully.');
      } catch (e) {
        debugPrint('Error loading data from Hive: $e');
      }
    } else {
      debugPrint('No data found in Hive.');
    }
  }

  Future<void> saveDataToHive(String data) async {
    var mvBox = await Hive.openBox(HiveStorageRepo.boxKnackbe);
    await mvBox.put('homeSummary', data);
  }

  Future<void> fetchHomeSummary() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      // Device is offline, show cached data
      debugPrint('No internet connection, loading data from Hive.');
    } else {
      // Device is online, fetch data from API
      await getHomeSummaryFromAPI();
    }
  }

  Future<void> getHomeSummaryFromAPI() async {
    var client = http.Client();

    var myCartList = await _homepostUseCase.getNimapSummary(client: client);
    client.close();

    myCartList.fold((l) {
      errorMessage = l.errorDisplayingMessage;
      debugPrint('Home Error Message: $errorMessage');
    }, (r) {
      getResponse = r;
      debugPrint('Home Screen Response: ${getResponse!.status}');

      timelineHomeList?.clear();
      if (getResponse?.status == StatusCode.success) {
        timelineHomeList = getResponse!.data!.records;

        // Save the fetched data to Hive
        String jsonData = jsonEncode(getResponse!.toJson());
        saveDataToHive(jsonData);
      } else {
        Constants.showToast('${getResponse?.status}');
      }
    });

    isLoading = false;
    notifyListeners();
  }
}

