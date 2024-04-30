import 'package:dartz/dartz.dart';

import 'package:sarmad_task/src/utils/exports.dart';
import 'package:sarmad_task/src/utils/string_helper.dart';




class SearchCriteriaRepository extends BaseRepository {
  final BaseDataSource baseDataSource;
  final NetWorkInfo networkChecker;
  SearchCriteriaRepository(this.baseDataSource, this.networkChecker);
  StringHelper stringHelper = StringHelper();
  @override
  Future<Either<Failure, ResponsePerson>> getSearchCriteria(RequestPerson person) async{
   if (await networkChecker.isDeviceConnected) {
      try {

        final reslut = await baseDataSource.getSearchCriteria(person);
         stringHelper.convertArrayList(reslut.persons[0].descriptions);
        return Right(reslut);
      }on ExceptionService {
        return Left(FailureService());
      }
       on ExceptionServiceCallBack catch (e) {
        return Left(FailureServiceWithResponse(msg: e.massage));
      }
    } else {
       print("Khaled Offline");
      return Left(FailureOffline());
    }
  }
  
  @override
  List<Object?> get props => [];
}
