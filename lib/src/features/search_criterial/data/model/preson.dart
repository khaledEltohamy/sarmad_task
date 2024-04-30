
import '../../../../utils/exports.dart';

class PersonModel extends PersonEntity {


  const PersonModel({
    required super.name, 
    required super.descriptions, 
    required super.nationality, 
    required super.placeOfBirth, 
    required super.score});

    factory PersonModel.fromJson(Map<String ,dynamic> json)=> 
    PersonModel(
      name: json["name"], 
      descriptions: json["descriptions"], 
      nationality: json["nat"], 
      placeOfBirth: json["places_of_birth"], 
      score: json["score"]);

    factory PersonModel.successUseCase()=> const PersonModel(
    name: "Abo Nazel, Mohamed Ibrahem Aly", 
    descriptions: [
                {
                    "description1": "SIP",
                    "description2": "Sanctions Lists",
                    "description3": ""
                },
                {
                    "description1": "SIP",
                    "description2": "Terror",
                    "description3": ""
                }
            ],
             nationality: "Egypt", 
             placeOfBirth: [],
              score: 96);

    factory PersonModel.successSecoundUseCase()=>
     const PersonModel(
      name: "Salem, Mohamed Ibrahem Mohammad", 
      descriptions:[
                {
                    "description1": "SIP",
                    "description2": "Sanctions Lists",
                    "description3": ""
                },
                {
                    "description1": "SIP",
                    "description2": "Terror",
                    "description3": ""
                }
            ], 
            nationality: "Egypt", 
            placeOfBirth: [], 
            score: 96);           

}