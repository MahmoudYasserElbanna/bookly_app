import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request to API server was cancelled");

      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection timeout with API server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errMessage: "Receive timeout in connection with API server");

      case DioExceptionType.sendTimeout:
        return ServerFailure(
            errMessage: "Send timeout in connection with API server");

      case DioExceptionType.badResponse:
        if (dioError.response != null) {
          return ServerFailure.fromResponse(
            dioError.response!.statusCode!,
            dioError.response!.data,
          );
        }

        return ServerFailure(
            errMessage: "Received invalid response from API server");

      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure(errMessage: "No Internet connection");
        }
        return ServerFailure(
            errMessage: "Unexpected error occurred: ${dioError.message}");

      default:
        return ServerFailure(
            errMessage: "Unexpected error occurred: ${dioError.message}");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
          errMessage: response['error']['message'] ?? "Authentication error");
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request was not found, please try again');
    } else if (statusCode >= 500) {
      return ServerFailure(errMessage: "Internal server error");
    } else {
      return ServerFailure(
          errMessage: "Something went wrong, please try again");
    }
  }
}
