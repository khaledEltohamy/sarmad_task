import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sarmad_task/src/utils/exports.dart';

import '../../helper/test_helper.mocks.dart';

void main() async{
  late SearchCriteriaUseCase searchCriteriaUseCase;
  late MockBaseRepository mockSearchCriteriaRepository;
  setUpAll((){
    mockSearchCriteriaRepository = MockBaseRepository();
    searchCriteriaUseCase = SearchCriteriaUseCase(mockSearchCriteriaRepository);
  });

  group("check cycle of search criterial useCase", () { 
    final RequestPerson requestSuccessPerson = RequestPerson.successCase();
    final RequestPerson requestFieldPerson = RequestPerson.fieldCase();
    final ResponsePerson responsePerson = ResponsePerson.successCase();
    test("should get right of success response person", () async {
    when(mockSearchCriteriaRepository.getSearchCriteria(requestSuccessPerson)).thenAnswer((_) async=> Right(responsePerson));
    final result = await searchCriteriaUseCase.getSearchCriteria(requestSuccessPerson);
    expect(result, Right(responsePerson));
    
  });
     test("should get left of field response person", () async {
    when(mockSearchCriteriaRepository.getSearchCriteria(requestFieldPerson)).thenAnswer((_) async=> Left(FailureService()));
    final result = await searchCriteriaUseCase.getSearchCriteria(requestFieldPerson);
    expect(result, Left(FailureService()));
    
  });

  });
  

}