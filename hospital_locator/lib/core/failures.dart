abstract class Failure {
  String message;
  Failure(this.message);
}

class InternetConnectivityFailure extends Failure {
  String message;

  InternetConnectivityFailure(this.message) : super(message);
}

class NetworkFailure extends Failure {
  String message;
  NetworkFailure(this.message) : super(message);
}

class ApiFailure extends Failure {
  String message;

  ApiFailure(this.message) : super(message);
}

class DatabaseFailure extends Failure {
  DatabaseFailure(String message) : super(message);
}

class CacheFailure extends Failure {
  CacheFailure(String message) : super(message);
}

class UIError extends Failure {
  UIError(String message) : super(message);
}
