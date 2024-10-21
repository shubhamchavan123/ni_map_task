import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:nimap/core/error_handaling/custom_exception.dart';
import 'package:nimap/features/nimap_home_screen/data/model/nimap_response_model.dart';
import 'package:nimap/networking_model/network_data_source/network_data_repo.dart';
import 'package:nimap/networking_model/network_data_source/response_statuscode_handler.dart';


abstract class NimapDataSource {
  Future<Either<CustomException, NimapResponseModel>> getDataSource(
      {required http.Client client,
      });
}

class NipmapPostDataClass implements NimapDataSource {
  @override
  Future<Either<CustomException, NimapResponseModel>> getDataSource(
      {required http.Client client,
      }) async {
    try {

      var response = await NetworkDataRepo().getNiMapPost(
        client: client,

      );
      var responseResult = responseStatusCodeHandler(response: response);
      return responseResult.fold((l) {
        /// Errors
        print('Left value: $l');
        return Left(l);
      }, (r) {
        /// Success
        print('Right value: $r');
        Map<String, dynamic>? cartData = json.decode(response.body);
        return Right(NimapResponseModel.fromJson(cartData));
      });
    } catch (e) {
      rethrow;
    }
  }
}
