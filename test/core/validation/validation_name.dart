import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';

void main() {
  group("validation name input field", () { 
   test("system shall validation with name with real name", () {
     final passed = Validations.validateName("Khaled");
     expect(passed, null);
   });

     test("system shall required at least one name of user (fname | mName) is passed", () {
       final passed = Validations.validateOneName("Khaled" , null);
       expect(passed, null);
   });
     test("system shall required at least one name of user (fname | mName) is not passed", () {
       final passed = Validations.validateOneName(null , null);
       expect(passed, requiredNameValidtionErrorMassage);
   });


  });
}