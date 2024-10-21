
import 'package:http/http.dart' as http;



abstract class NetworkDataSource {



  Future<http.Response> getNiMapPost(
      {required http.Client client, });




}
