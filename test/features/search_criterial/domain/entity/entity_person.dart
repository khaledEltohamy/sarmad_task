
import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/features/search_criterial/domain/entity/preson_entity.dart';
import 'package:sarmad_task/src/utils/exports.dart';


void main() {
  const PersonModel personModel =   PersonModel(name: "Khaled", descriptions: [], nationality: "Egypt", placeOfBirth: [], score: 90);

    test("should personModel is subclass of personEntity", () {
    expect(personModel, isA<PersonEntity>());
   });
   }