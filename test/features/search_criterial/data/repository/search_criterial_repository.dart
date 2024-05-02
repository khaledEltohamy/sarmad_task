
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sarmad_task/src/utils/exports.dart';
import '../../helper/test_helper.mocks.dart';

void main() {

  late SearchCriteriaRepository repository;
  late MockBaseDataSource mockRemoteDataSource;
  late MockNetWorkInfo mockNetworkInfo;
  

  setUp(() {
    mockRemoteDataSource = MockBaseDataSource();
    mockNetworkInfo = MockNetWorkInfo();
    repository = SearchCriteriaRepository(mockRemoteDataSource,mockNetworkInfo);
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isDeviceConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isDeviceConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group('Search Criterial Repository', () {
    final requestSuccessPeson = RequestPerson.successCase();
    final requestFieldPeson = RequestPerson.fieldNameCase();
    final responsePerson =ResponsePerson.successCase();

 runTestsOnline(() {
      test('should return remote data when the call to remote data source is successful',
          () async {
        when(mockRemoteDataSource.getSearchCriteria(requestSuccessPeson))
            .thenAnswer((_) async => responsePerson);
        final result = await repository.getSearchCriteria(requestSuccessPeson);
        verify(mockRemoteDataSource.getSearchCriteria(requestSuccessPeson));
        expect(result, Right(responsePerson));
      });
    
      test(
          'should return server failure when the call to remote data source ',
          () async {
           when(mockRemoteDataSource.getSearchCriteria(requestFieldPeson))
            .thenThrow(ExceptionService());

        final result = await repository.getSearchCriteria(requestFieldPeson);

        verify(mockRemoteDataSource.getSearchCriteria(requestFieldPeson));
        expect(result, equals(Left(FailureService())));
      });
   
    });

  runTestsOffline((){
  test("should return offline failure when the call to remote data source ", () async{
      when(mockRemoteDataSource.getSearchCriteria(requestSuccessPeson))
            .thenAnswer((_) async => responsePerson);
        final result = await repository.getSearchCriteria(requestSuccessPeson);
        verifyNever(mockRemoteDataSource.getSearchCriteria(requestSuccessPeson));
        expect(result, Left(FailureOffline()));

  });
  });

});}