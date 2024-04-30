import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';

void main() {
    
    RequestPerson requestPerson = RequestPerson.successCase(); 
 
  group("request person model test cases , toJson should convert model to map  , should data type is string for all fields", () { 
    test("to Json", (){
     final jsonModel = requestPerson.toJson();
     expect(jsonModel, requestPerson.successCaseToJson());
    });
    test("shoud all fields is String", (){
     final jsonModel = requestPerson.toJson();
     for (var fieldValue in jsonModel.values){
       expect(fieldValue, isA<String>());
     }
     
    });
    });
}