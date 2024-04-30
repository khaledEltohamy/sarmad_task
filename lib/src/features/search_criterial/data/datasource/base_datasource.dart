import '../../../../utils/exports.dart';

// ignore: must_be_immutable
abstract class BaseDataSource extends ApiHelper{
 Future<ResponsePerson> getSearchCriteria(RequestPerson person);
}