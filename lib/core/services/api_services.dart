import 'dart:convert';

import 'package:http_interceptor/http/intercepted_http.dart';

import '/utils/either/either.dart';
import '/utils/either/failure.dart';
import '/core/services/connectivity_service/connectivity_service.dart';
import '/core/interceptors/auth_interceptors/auth_interceptors.dart';

/// [ApiServices] to define http calls as common methods
class ApiServices {
  /// to make this class a singleton
  static final ApiServices _singleton = ApiServices._internal();

  final apiBaseUrl = 'https://dev.grievancecell.info/index.php/Apicontroller/';

  factory ApiServices() {
    return _singleton;
  }
  ApiServices._internal();

  /// [get] to perform http get operation
  Future<Either<Failure, dynamic>> get({
    required String slug,
    String queryParameter = '',
  }) async {
    final queryParams = queryParameter.isEmpty ? '' : '?$queryParameter';
    final url = apiBaseUrl + slug + queryParams;

    /// check for internet connection
    if (await ConnectionChecker().isConnected()) {
      try {
        /// perform http request
        final result = await InterceptedHttp.build(
          interceptors: [
            AuthInterceptorHeader(),
          ],
        ).get(
          Uri.parse(url),
        );

        if (result.statusCode == 200) {
          print('get body--->${result.body}');
          final data = json.decode(result.body);
          return right(data);
        } else if (result.statusCode == 500) {
          // print('get body error--->${result.body}');
          return left(Failure.commonFailure());
        } else {
          // print('get body error2--->${result.body}');
          final data = json.decode(result.body);
          return left(Failure.unexpected(errorMsg: data['message']));
        }
      } catch (e) {
        print(e);
        return left(Failure.commonFailure());
      }
    } else {
      return left(const Failure.networkError());
    }
  }

  /// [put] to perform http put operation
  Future<Either<Failure, dynamic>> put({
    required String slug,
    required Map<String, dynamic> body,
  }) async {
    final url = apiBaseUrl + slug;

    /// check for internet connection
    if (await ConnectionChecker().isConnected()) {
      try {
        /// perform http request
        final result = await InterceptedHttp.build(
          interceptors: [
            AuthInterceptorHeader(),
          ],
        ).put(
          Uri.parse(url),
          body: jsonEncode(body),
        );

        if (result.statusCode == 200) {
          final data = json.decode(result.body);
          return right(data);
        } else if (result.statusCode == 500) {
          return left(Failure.commonFailure());
        } else {
          final data = json.decode(result.body);
          return left(Failure.unexpected(errorMsg: data['message']));
        }
      } catch (e) {
        return left(Failure.commonFailure());
      }
    } else {
      return left(const Failure.networkError());
    }
  }

  /// [post] to perform http put operation
  Future<Either<Failure, dynamic>> post({
    required String slug,
    required Map<String, dynamic> body,
  }) async {
    final url = apiBaseUrl + slug;

    /// check for internet connection
    if (await ConnectionChecker().isConnected()) {
      try {
        /// perform http request
        final result = await InterceptedHttp.build(
          interceptors: [
            AuthInterceptorHeader(),
          ],
        ).post(
          Uri.parse(url),
          body: jsonEncode(body),
        );
        print('body post-->${result.body}');
        if (result.statusCode == 200) {
          final data = json.decode(result.body);
          return right(data);
        } else if (result.statusCode == 500) {
          return left(Failure.commonFailure());
        } else {
          final data = json.decode(result.body);
          return left(Failure.unexpected(errorMsg: data['message']));
        }
      } catch (e) {
        print(e);
        return left(Failure.commonFailure());
      }
    } else {
      return left(const Failure.networkError());
    }
  }

  /// [delete] to perform http delete operation
  Future<Either<Failure, dynamic>> delete({
    required String slug,
    required Map<String, dynamic> body,
  }) async {
    final url = apiBaseUrl + slug;

    /// check for internet connection
    if (await ConnectionChecker().isConnected()) {
      try {
        /// perform http request
        final result = await InterceptedHttp.build(
          interceptors: [
            AuthInterceptorHeader(),
          ],
        ).delete(
          Uri.parse(url),
          body: jsonEncode(body),
        );

        if (result.statusCode == 200) {
          final data = json.decode(result.body);
          return right(data);
        } else if (result.statusCode == 500) {
          return left(Failure.commonFailure());
        } else {
          final data = json.decode(result.body);
          return left(Failure.unexpected(errorMsg: data['message']));
        }
      } catch (e) {
        return left(Failure.commonFailure());
      }
    } else {
      return left(const Failure.networkError());
    }
  }
}

/// to use methods inside api services
late ApiServices apiServices;
