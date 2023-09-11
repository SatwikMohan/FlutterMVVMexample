abstract class BaseApiService{
  Future<dynamic> getGetApiResponse(String url,dynamic headers);
  Future<dynamic> getPostApiResponse(String url,dynamic headers,dynamic dataBody);
}