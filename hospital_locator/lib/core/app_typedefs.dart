import 'package:dartz/dartz.dart';
import 'package:hospital_locator/core/failures.dart';

// all usecases will implement this contract
abstract class Usecase<ReturnType, Param> {
  Future<Either<UIError, ReturnType>> call(Param param);
}

// this will be used for all usecases without paramters
class NoParam {
  const NoParam();
}
