abstract class Failure {
  String message;
  Failure(this.message);
}

class InternetConnectivityFailure extends Failure {
  String message;

  InternetConnectivityFailure(this.message) : super(message);
}

class NetworkFailures extends Failure {
  String message;
  NetworkFailures(this.message) : super(message);
}

class ApiFailure extends Failure {
  String message;

  ApiFailure(this.message) : super(message);
}

class DatabaseFailure {
  String message;
  DatabaseFailure(this.message);
}

class CacheFailure {
  String message;
  CacheFailure(this.message);
}
