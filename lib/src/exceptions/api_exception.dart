sealed class APIException implements Exception {
  APIException(this.message);
  final String message;
}

/// 401
class InvalidApiKeyException extends APIException {
  InvalidApiKeyException() : super('Invalid API key.');
}

/// 404
class MovieFoundException extends APIException {
  MovieFoundException() : super('Resource not found.');
}

/// 405, 422
class InvalidRequestException extends APIException {
  InvalidRequestException() : super('Invalid format or parameters.');
}

/// 500
class ServerErrorException extends APIException {
  ServerErrorException()
      : super('Internal error: Something went wrong, contact TMDB.');
}

/// 501, 503
class ServiceOfflineException extends APIException {
  ServiceOfflineException()
      : super('Service Offline or undergoing maintenance. Try again later.');
}

/// 504
class RequestTimedOutException extends APIException {
  RequestTimedOutException()
      : super('Your request to the backend server timed out. Try again.');
}

class UnknownException extends APIException {
  UnknownException() : super('Some error occurred.');
}

class NoInternetConnectionException extends APIException {
  NoInternetConnectionException() : super('No Internet connection.');
}
