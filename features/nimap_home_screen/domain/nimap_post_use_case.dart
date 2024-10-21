import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:nimap/core/error_handaling/custom_exception.dart';
import 'package:nimap/features/nimap_home_screen/data/model/nimap_response_model.dart';
import 'package:nimap/features/nimap_home_screen/data/repository/nimap_post_repository.dart';

class NimapPostUseCase {
  final NimapRepoImpl _cartRepoImpl = NimapRepoImpl();

  Future<Either<CustomException, NimapResponseModel>> getNimapSummary(
      {required http.Client client,
       }) async {
    return _cartRepoImpl.getNimap(
        client: client, );
  }
}
