import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';

void main() {
  group("validation country input field", () { 
   test("system shall matches with nationalty with real country name", () {
     final passed = Validations.validateCountry("Egypt");
     expect(passed, null);
   });

     test("system shall matches with nationalty with fake name", () {
       final passed = Validations.validateCountry("Khaled");
       expect(passed, countryValidtionErrorMassage);
   });


  });
}