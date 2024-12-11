import 'package:http/http.dart' as http;

import 'package:movie_vault/src/commons.dart';

class ApiClient {
  final client = http.Client();

  /// return response.body if success
  Future<T> getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          return builder(data);
        case 401:
          throw InvalidApiKeyException();
        case 404:
          throw MovieFoundException();
        case 405:
          throw InvalidRequestException();
        case 422:
          throw InvalidRequestException();
        case 500:
          throw ServerErrorException();
        case 501:
          throw ServiceOfflineException();
        case 503:
          throw ServiceOfflineException();
        case 504:
          throw RequestTimedOutException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}
