import '../../utils/exports.dart';

class ErrorResult {
  String errorMessage;
  ErrorType type;

  ErrorResult({
    required this.errorMessage,
    required this.type,
  });

  factory ErrorResult.getErrorResult(DioException exception) {
    if (exception.type is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          return ErrorResult(
            errorMessage: AppString.cancelKey.tr,
            type: ErrorType.cancel,
          );

        case DioExceptionType.connectionTimeout:
          return ErrorResult(
            errorMessage: AppString.poorInternetConnectionKey.tr,
            type: ErrorType.connectTimeout,
          );

        case DioExceptionType.unknown:
          return ErrorResult(
            errorMessage: AppString.noInterNetConnectionKey.tr,
            type: ErrorType.noInternetConnection,
          );
        default:
          return ErrorResult(
            errorMessage:
                exception.message ?? AppString.somethingWentWrongKey.tr,
            type: ErrorType.other,
          );
      }
    } else {
      return ErrorResult(
        errorMessage: exception.toString(),
        type: ErrorType.other,
      );
    }
  }
}
