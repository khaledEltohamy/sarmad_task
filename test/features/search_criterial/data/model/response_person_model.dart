
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final result = ResponsePerson.fromJson(jsonResponsePerson);

     group("json mapper test", () {

    test("from Json , should convert json file to Response Person object", (){
        expect(result, isA<ResponsePerson>());
    });
    
    test("check if the one of list element contain the same name", ()async {
         final expectedName = "Mohamed Ibrahem".toLowerCase();
        final index = Random().nextInt(result.persons.length);  
        expect(result.persons[index].name.toLowerCase().contains(expectedName), true);
    });

    });
 }
  const Map<String , dynamic> jsonResponsePerson = {
    "threshold": 70,
    "fname": "Mohamed",
    "mname": "Ibrahem",
    "nat": "Egypt",
    "source": "API",
    "query_id": "f299e391-bcc1-48ad-9432-90af8932b688",
    "query_uuid": "f299e391-bcc1-48ad-9432-90af8932b688",
    "query_time": "2023-04-30T11:56:19.087095",
    "query_type": "INDIVIDUAL",
    "query_status": "FINISHED",
    "result_time": "2024-04-30T05:52:53.403257",
    "is_batch_query": false,
    "screen_result" : [
              {
            "score": 96,
            "name": "Abo Nazel, Mohamed Ibrahem Aly",
            "nat": "Egypt",
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
        },
        {
            "score": 96,
            "name": "Salem, Mohamed Ibrahem Mohammad",
            "nat": "Egypt", 
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
        },
    ]
 };
