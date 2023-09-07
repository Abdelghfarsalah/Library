import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class serverfauiler extends Failure {
  serverfauiler(super.message);
  factory serverfauiler.DioError(DioError message) {
    switch (message.type) {
      case DioExceptionType.connectionTimeout:
        return serverfauiler('Connection timeout with api server');

      case DioExceptionType.sendTimeout:
        return serverfauiler('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return serverfauiler('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return serverfauiler('badCertificate with api server');
      case DioExceptionType.badResponse:
        return serverfauiler.fromResponse(
            message!.response!.statusCode!, message!.response!.data);
      case DioExceptionType.cancel:
        return serverfauiler('Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return serverfauiler('No Internet Connection');
      case DioExceptionType.unknown:
        return serverfauiler('Opps There was an Error, Please try again');
    }
  }
  factory serverfauiler.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return serverfauiler('Your request was not found, please try later');
    } else if (statusCode == 500) {
      return serverfauiler('There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serverfauiler(response['error']['message']);
    } else {
      return serverfauiler('There was an error , please try again');
    }
  }
}
