
import '../../../../utils/exports.dart';

class ResponsePerson {
  final List<PersonModel> persons;

  ResponsePerson({required this.persons});

  factory ResponsePerson.fromJson(Map<String ,dynamic> json)=> 
    ResponsePerson(
      persons: List<PersonModel>.from(json["screen_result"].map((person)=> PersonModel.fromJson(person))));

  factory ResponsePerson.empty()=> ResponsePerson(persons: []);

  factory ResponsePerson.successCase()=> ResponsePerson( persons: [
      PersonModel.successUseCase(),
      PersonModel.successSecoundUseCase(),
     ] );
}