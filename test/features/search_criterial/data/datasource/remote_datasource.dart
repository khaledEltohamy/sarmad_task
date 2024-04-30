import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:sarmad_task/src/utils/exports.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp((){
    dio = Dio(BaseOptions(baseUrl: BASE_URL));
    dioAdapter = DioAdapter(dio: dio);
  });
  group("Api", () { 
  final requestPersonSuccessCase =  RequestPerson.successCase();
  final requestPersonSuccessCaseFname =  RequestPerson.successCaseFname();
    final requestPersonSuccessCaseMname =  RequestPerson.successCaseMname();
  final requestPersonFieldCase =  RequestPerson.fieldCase();
      final headers = <String, List<String>>{  "Accept":["application/json"],
        "Content-Type": ["application/json"]};
    
    test("search critrial Request must be succes response with fName & mName", () {
      dioAdapter.onPost(individual, (server) { 
        server.reply(200,  headers: headers , requestPersonSuccessCase);
      });
    });
    test("search critrial Request must be succes response with  fName | mName & without nat", () {
      dioAdapter.onPost(individual, (server) { 
        server.reply(200,  headers: headers , requestPersonSuccessCaseFname);
      });
    });
    test("search critrial Request must be succes response with  fName | mName & with nat", () {
      dioAdapter.onPost(individual, (server) { 
        server.reply(200,  headers: headers , requestPersonSuccessCaseMname);
      });
    });

    test("search critrial Request must be field response without fName & mName", () {
      dioAdapter.onPost(individual, (server) { 
        server.reply(500,  headers: headers , requestPersonFieldCase);
      });
    });
    
  });
}