
import '../../../../utils/exports.dart';

// ignore: must_be_immutable
class RemoteDataSource extends BaseDataSource {

  
  @override
  Future<ResponsePerson> getSearchCriteria(RequestPerson person)async {
   try{
    final response = await dio.post(individual ,data: person.toJson());
    final responsePerson = response.data["screen_result"] as List;
    if (responsePerson.isEmpty){
      return ResponsePerson.empty();
    }else {
      return ResponsePerson.fromJson(response.data);
    }

   }on DioException catch (e){
    if (e.response != null){
       if (e.response!.statusCode == 500){
      throw ExceptionService();
    }else {
      throw ExceptionServiceCallBack(massage: "${e.response!.data} ${e.response!.statusCode}");
    }
    }else {
      throw ExceptionServiceCallBack(massage: e.message!);
    }
   
    
   }
  }
  
  

  


  
}