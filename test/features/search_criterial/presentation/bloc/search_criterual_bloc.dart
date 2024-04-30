import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sarmad_task/src/utils/exports.dart';

import '../../helper/test_helper.mocks.dart';



void main() {
  late MockSearchCriteriaUseCase mocSearchCriterialUseCase ; 
  late SearchCriteriaBloc searchCriteriaBloc;
  setUp(() {
  mocSearchCriterialUseCase = MockSearchCriteriaUseCase();
  searchCriteriaBloc = SearchCriteriaBloc(mocSearchCriterialUseCase);
  } );
   group('SearchCriteriaBloc', () {
    final RequestPerson requestSuccessPerson = RequestPerson.successCase();
    final RequestPerson requestFieldPerson = RequestPerson.fieldCase();
    final ResponsePerson responsePerson = ResponsePerson.successCase();
    blocTest<SearchCriteriaBloc, SearchCriteriaState>(
      'init nothing',
      build: () => SearchCriteriaBloc(MockSearchCriteriaUseCase()),
      expect: () =>  <SearchCriteriaState>[],
    );

    blocTest<SearchCriteriaBloc, SearchCriteriaState>(
      'emits SearchCriteriaSuccess when RequestPerson is successCase',
       
      build: () {
      when(mocSearchCriterialUseCase.getSearchCriteria(requestSuccessPerson)).thenAnswer((_)async=> Right(responsePerson));
      return searchCriteriaBloc;
      },
      act: (bloc) => bloc.add(GetSearchCriteria(requestPerson: requestSuccessPerson)),
      expect: () => <SearchCriteriaState>[SearchCriteriaLoading() ,SearchCriteriaSuccess(responsePerson: responsePerson)],
      wait:const  Duration(seconds: 5),
    );
    
    blocTest<SearchCriteriaBloc, SearchCriteriaState>(
      'emits SearchCriteriaSuccess when RequestPerson is Field Case',
       
      build: () {
      when(mocSearchCriterialUseCase.getSearchCriteria(requestFieldPerson)).thenAnswer((_)async=> Left(FailureService()));
      return searchCriteriaBloc;
      },
      act: (bloc) => bloc.add(GetSearchCriteria(requestPerson: requestFieldPerson)),
      expect: () => <SearchCriteriaState>[SearchCriteriaLoading() ,SearchCriteriaField(errorModel: ErrorModel(title: "error", contant: "error"))],
      wait:const  Duration(seconds: 5),
    );
  });

}


