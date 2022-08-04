class ServerException implements Exception {
  int code;

  ServerException(this.code);
}

class ObjectNotFoundException implements Exception {}

class ClientException implements Exception {}
