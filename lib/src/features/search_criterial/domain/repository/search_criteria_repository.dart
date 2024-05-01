import 'package:dartz/dartz.dart';

import 'package:sarmad_task/src/utils/exports.dart';




// ignore: must_be_immutable
class SearchCriteriaRepository extends BaseRepository {
  final BaseDataSource baseDataSource;
  final NetWorkInfo networkChecker;
  SearchCriteriaRepository(this.baseDataSource, this.networkChecker);
  @override
  Future<Either<Failure, ResponsePerson>> getSearchCriteria(RequestPerson person) async{
   if (await networkChecker.isDeviceConnected) {
      try {

        final reslut = await baseDataSource.getSearchCriteria(person);

        return Right(reslut);
      }on ExceptionService {
        return Left(FailureService());
      }
       on ExceptionServiceCallBack catch (e) {
        return Left(FailureServiceWithResponse(msg: e.massage));
      }
    } else {
      return Left(FailureOffline());
    }
  }
  
  @override
  List<Object?> get props => [];
}
