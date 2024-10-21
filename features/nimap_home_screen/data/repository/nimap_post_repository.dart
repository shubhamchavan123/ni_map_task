import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:nimap/core/error_handaling/custom_exception.dart';
import 'package:nimap/features/nimap_home_screen/data/data_source/nimap_post_data_source.dart';
import 'package:nimap/features/nimap_home_screen/data/model/nimap_response_model.dart';

abstract class HomePostRepoAbstract {
  Future<Either<CustomException, NimapResponseModel>> getNimap(
      {required http.Client client,
     });
}

class NimapRepoImpl implements HomePostRepoAbstract {
  final NipmapPostDataClass _homeData = NipmapPostDataClass();

  @override
  Future<Either<CustomException, NimapResponseModel>> getNimap(
      {required http.Client client,
      }) async {

    return _homeData.getDataSource(
        client: client,  );
  }
}
