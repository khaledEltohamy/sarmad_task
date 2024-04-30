import 'package:dartz/dartz.dart';
import '../../../../utils/exports.dart';

abstract class BaseRepository extends Equatable {
  
  Future<Either<Failure,ResponsePerson>> getSearchCriteria(RequestPerson person);
}