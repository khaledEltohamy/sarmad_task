import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';
void main() {
   PersonModel personModel =   PersonModel.successUseCase();

    group("json mapper test", () {
    final result = PersonModel.fromJson(jsonPersonModel);
    test("from Json , should convert json file to Response Person object and check if the one of list element contain the same name", ()async {  
        expect(result, personModel);
    });

    });
 }

   const Map<String , dynamic> jsonPersonModel = {
            "score": 96,
            "is_white_listed": false,
            "is_true_positive": false,
            "name": "Abo Nazel, Mohamed Ibrahem Aly",
            "subcategories": [
                {
                    "id": 13,
                    "name": "Other Sanctions",
                    "description": "Sanctions from other sources"
                }
            ],
            "date": "",
            "pob": "",
            "nat": "Egypt",
            "iden": "",
            "entity_type": "individual",
            "gender": "MALE",
            "active_status": "ACTIVE",
            "descriptions": [
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
            "places_of_birth": [],
            "countries": [
                {
                    "type": "Citizenship",
                    "name": "Egypt"
                },
                {
                    "type": "Resident of",
                    "name": "Not Known"
                }
            ],
            "source_names": [
                "https://tinyurl.com/32nv72h7"
            ],
            "image_urls": [],
            "profile_notes": "EGYPT NATIONAL TERRORISTS LIST NOTES:  ID Number: **********1392",
            "addition_date": "2022-12-27",
            "last_reviewed_date": "2022-12-27"
        };
     