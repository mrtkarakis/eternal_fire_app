part of 'network_manager.dart';

class _Interceptor extends Interceptor {
//
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    NetworkManager.headers.forEach((k, v) {
      if (options.headers[k] == null) {
        options.headers[k] = v;
      }
    });

    super.onRequest(options, handler);
    developerLog(
      "\nBaseUrl: ${options.baseUrl}\nPath: ${options.path.toString()}\nHeaders: ${options.headers}\nData: ${options.data.toString()}\nQueryParameters: ${options.queryParameters.toString()}",
      name: "DioInterceptor.onRequest",
    );
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);

    developerLog(
      "\nBaseUrl: ${response.requestOptions.baseUrl}\nPath:${response.requestOptions.path}\nHeaders: ${response.requestOptions.headers}\nResponse: $response",
      name: "DioInterceptor.onResponse",
    );
  }

  @override
  Future<void> onError(
      final DioException err, final ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
    developerLog(
      null,
      error:
          "\nBaseUrl: ${err.requestOptions.baseUrl}\nPath: ${err.requestOptions.path}\nHeaders: ${err.requestOptions.headers}\nstatusCode: ${err.response?.statusCode}\nQueryParameters: ${err.requestOptions.queryParameters}\nData: ${err.requestOptions.data}\nErrorType: ${err.type}\nResponseData: ${err.response?.data}",
      name: "DioInterceptor.onError",
    );
  }
}
