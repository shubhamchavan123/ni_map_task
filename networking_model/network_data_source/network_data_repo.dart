import 'dart:convert';


import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:nimap/core/error_handaling/custom_exception.dart';
import 'package:nimap/networking_model/api_base_model/uri_builder.dart';
import 'package:nimap/networking_model/network_data_source/network_data_source.dart';

class NetworkDataRepo implements NetworkDataSource {
  var uriBuilder = URIBuilder();


  @override
  Future<http.Response> getNiMapPost({
    required http.Client client,
  }) async {
    try {
      // Construct the URL with parameters
      var uri = Uri.parse('https://testffc.nimapinfotech.com/testdata.json');


      // Make the GET request
      var response = await http.get(
        uri,

      );

      // Check the response status code
      if (response.statusCode == 200) {
        // Print the response body
        debugPrint('NetworkDataRepo Home Post Data response: ${response.body}');
      } else if (response.statusCode == 401) {
        // Handle 401 Unauthorized (Invalid or expired token)
        debugPrint('NetworkDataRepo Home Post Data error: Unauthorized - Token is invalid or expired');
        // You may want to log out the user or refresh the token here
      } else {
        // Print an error message for other status codes
        debugPrint('NetworkDataRepo Home Post Data error: ${response.statusCode}');
      }

      return response;
    } on TimeOutException catch (e) {
      debugPrint('Timed out $e');
      rethrow;
    } on Exception catch (e) {
      debugPrint('ExceptionXXX $e');
      rethrow;
    }
  }









}
