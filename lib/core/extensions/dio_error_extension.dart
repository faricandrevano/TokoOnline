import 'package:dio/dio.dart';
import 'package:shamo_mobile/core/core.dart';

extension DioErrorExtension on DioException {
  ServerException toServerException() {
    switch (type) {
      case DioExceptionType.badResponse:
        switch (response?.statusCode) {
          case 401:
            return UnAuthenticationServerException(
              message: 'Unauthorized',
              code: response?.statusCode,
            );
          case 403:
            return UnAuthorizeServerException(
              message: 'Forbidden',
              code: response?.statusCode,
            );
          case 404:
            return NotFoundServerException(
              message: 'Not found',
              code: response?.statusCode,
            );
          case 500:
          case 502:
            return InternalServerException(
              message: 'Internal server error',
              code: response?.statusCode,
            );
          default:
            return GeneralServerException(
              message: 'Internal server error',
              code: response?.statusCode,
            );
        }

      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return TimeOutServerException(
          message: 'Connection timeout',
          code: response?.statusCode,
        );

      case DioErrorType.cancel:
      case DioErrorType.badCertificate:
      case DioErrorType.connectionError:
      case DioErrorType.unknown:
        return GeneralServerException(
          message: 'A Server Error Occurred',
          code: response?.statusCode,
        );
    }
  }
}
