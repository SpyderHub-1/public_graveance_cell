import 'package:http_interceptor/http_interceptor.dart';

/// [AuthInterceptorHeader] to generate headers for api request.
class AuthInterceptorHeader implements InterceptorContract {
  /// [getToken] to get language code
  static Future<String> get getToken async {
    /// TODO(developer): fetch the actual token and return it.
    return 'token';
  }

  /// this to print token which is very lengthy, so it won't print wntire token at once
  static void printWrapped(String text) {
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    final token = await getToken;
    data.headers['Content-Type'] = 'application/json';
    data.headers['Authorization'] = 'Bearer $token';
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}
