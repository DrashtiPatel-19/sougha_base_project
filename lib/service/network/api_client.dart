import '../../../utils/exports.dart';

/// Service of [ApiClient] (DIO).
///
/// Used to provide singleton instance of [ApiClient].
class ApiClient extends GetxService {
  Dio? _dio;
  String tag = "API call :";
  CancelToken? _cancelToken;

  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient({bool isJson = false}) {
// mDio.options.headers['authorization'] = 'Bearer ';
// mDio.options.contentType = !isJson
// ? 'application/json'
// : 'application/x-www-form-urlencoded';

    return _instance;
  }

  ApiClient._internal() {
    _dio = initApiHandlerDio();
  }

  Dio initApiHandlerDio() {
    _cancelToken = CancelToken();
    final baseOption = BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      baseUrl: configBaseUrl,
      contentType: 'application/json',
      headers: {
        "Platform": "Android",
        "Version" : "1.3"
      }


    );
    final mDio = Dio(baseOption);
    mDio.interceptors.add(HttpHandleInterceptor());
    if (kDebugMode) {
      mDio.interceptors.add(AwesomeDioInterceptor(
        logRequestHeaders: true,
        logResponseHeaders: true,
        logger: (log) => DebugLog.d(log),
      ));
    }
    return mDio;
  }

  void cancelRequests({CancelToken? cancelToken}) {
    cancelToken == null
        ? _cancelToken?.cancel('Cancelled')
        : cancelToken.cancel();
  }

  FutureOr<ResponseHandler<T?>> get<T>(
    String endUrl, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    bool showLoader = true,
    bool dismissLoader = true,
  }) async {
    late ResponseHandler<T?> handler;
    try {
      _showLoading(showLoader);
      var isConnected = await _checkInternet();
      if (!isConnected) {
        handler = OnFailureResponse(
          error: ErrorResult(
            errorMessage: AppString.internetNotConnectedKey.tr,
            type: ErrorType.noInternetConnection,
          ),
        );
      } else {
        final response = await _dio?.get<T>(
          endUrl,
          queryParameters: params,
          cancelToken: cancelToken ?? _cancelToken,
          options: options,
        );
        handler = _responseHandler<T>(response);
      }
    } on FormatException {
      handler = OnFailureResponse(
        error: ErrorResult(
          errorMessage: AppString.badRequestStateKey.tr,
          type: ErrorType.other,
        ),
      );
    } on DioException catch (e) {
      handler = _errorHandler<T>(e);
    }
    _dismissLoading(dismissLoader);
    return handler;
  }

  FutureOr<ResponseHandler<T?>> post<T>(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    bool isMultipartFormData = false,
    bool showLoader = true,
    bool dismissLoader = true,
  }) async {
    late ResponseHandler<T?> handler;
    try {
      _showLoading(showLoader);
      var isConnected = await _checkInternet();
      if (!isConnected) {
        handler = OnFailureResponse(
          error: ErrorResult(
            errorMessage: AppString.internetNotConnectedKey.tr,
            type: ErrorType.noInternetConnection,
          ),
        );
      } else {
        final response = await _dio?.post<T>(
          endUrl,
          data: isMultipartFormData ? FormData.fromMap(data!) : data,
          queryParameters: params,
          cancelToken: cancelToken ?? _cancelToken,
          options: options,
        );
        handler = _responseHandler<T>(response);
      }
    } on FormatException {
      handler = OnFailureResponse(
        error: ErrorResult(
          errorMessage: AppString.badRequestStateKey.tr,
          type: ErrorType.other,
        ),
      );
    } on DioException catch (e) {
      handler = _errorHandler<T>(e);
    }
    _dismissLoading(dismissLoader);
    return handler;
  }

  FutureOr<ResponseHandler<T?>?> delete<T>(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    bool showLoader = true,
    bool dismissLoader = true,
  }) async {
    late ResponseHandler<T?> handler;
    try {
      _showLoading(showLoader);
      var isConnected = await _checkInternet();
      if (!isConnected) {
        handler = OnFailureResponse(
          error: ErrorResult(
            errorMessage: AppString.internetNotConnectedKey.tr,
            type: ErrorType.noInternetConnection,
          ),
        );
      } else {
        final response = await _dio?.delete<T>(
          endUrl,
          data: data,
          queryParameters: params,
          cancelToken: cancelToken ?? _cancelToken,
          options: options,
        );
        handler = _responseHandler<T>(response);
      }
    } on FormatException {
      handler = OnFailureResponse(
        error: ErrorResult(
          errorMessage: AppString.badRequestStateKey.tr,
          type: ErrorType.other,
        ),
      );
    } on DioException catch (e) {
      handler = _errorHandler<T>(e);
    }
    _dismissLoading(dismissLoader);
    return handler;
  }

  ResponseHandler<T?> _responseHandler<T>(Response<T>? response) {
    if (response?.statusCode == 200) {
      return OnSuccessResponse(response: response?.data);
    } else if (response?.statusCode == 401) {
      SharedPref.clearData();
      Get.offNamedUntil(AppPaths.login, (route) => false);
      return OnFailureResponse(
        error: ErrorResult(
          errorMessage: AppString.unauthorizedKey.tr,
          type: ErrorType.other,
        ),
        statusCode: 401,
      );
    } else if (response?.statusCode == 500) {
      return OnFailureResponse(
        error: ErrorResult(
          errorMessage: AppString.serverNotRespondKey.tr,
          type: ErrorType.serverNotRespond,
        ),
        statusCode: 500,
      );
    } else {
      return OnFailureResponse(
        error: ErrorResult(
          errorMessage: AppString.somethingWentWrongKey.tr,
          type: ErrorType.other,
        ),
      );
    }
  }

  ResponseHandler<T?> _errorHandler<T>(DioException error) {
    if (error.type == DioExceptionType.badResponse) {
      return OnSuccessResponse<T?>(response: error.response?.data);
    }
    return OnFailureResponse(error: ErrorResult.getErrorResult(error));
  }

  FutureOr<bool> _checkInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  void _showLoading(bool showLoader) {
    if (showLoader) EasyLoading.show();
  }

  void _dismissLoading(bool dismissLoader) {
    if (dismissLoader) EasyLoading.dismiss(animation: true);
  }
}

/// Interceptor to intercept api request and response.
class HttpHandleInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
