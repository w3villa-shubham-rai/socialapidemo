abstract class BaseApiService {
  Future<dynamic> getApi(dynamic url);
  Future<dynamic> postApi(dynamic data, dynamic url);
}
