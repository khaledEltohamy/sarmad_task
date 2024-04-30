// Mocks generated by Mockito 5.4.4 from annotations
// in sarmad_task/test/features/search_criterial/helper/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sarmad_task/src/utils/exports.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDio_1 extends _i1.SmartFake implements _i3.Dio {
  _FakeDio_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponsePerson_2 extends _i1.SmartFake
    implements _i3.ResponsePerson {
  _FakeResponsePerson_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseRepository_3 extends _i1.SmartFake
    implements _i3.BaseRepository {
  _FakeBaseRepository_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [BaseRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockBaseRepository extends _i1.Mock implements _i3.BaseRepository {
  MockBaseRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<Object?> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object?>[],
      ) as List<Object?>);

  @override
  _i4.Future<_i2.Either<_i3.Failure, _i3.ResponsePerson>> getSearchCriteria(
          _i3.RequestPerson? person) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearchCriteria,
          [person],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i3.Failure, _i3.ResponsePerson>>.value(
                _FakeEither_0<_i3.Failure, _i3.ResponsePerson>(
          this,
          Invocation.method(
            #getSearchCriteria,
            [person],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i3.Failure, _i3.ResponsePerson>>);
}

/// A class which mocks [BaseDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockBaseDataSource extends _i1.Mock implements _i3.BaseDataSource {
  MockBaseDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_1(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i3.Dio);

  @override
  set dio(_i3.Dio? _dio) => super.noSuchMethod(
        Invocation.setter(
          #dio,
          _dio,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<Object?> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object?>[],
      ) as List<Object?>);

  @override
  _i4.Future<_i3.ResponsePerson> getSearchCriteria(_i3.RequestPerson? person) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearchCriteria,
          [person],
        ),
        returnValue: _i4.Future<_i3.ResponsePerson>.value(_FakeResponsePerson_2(
          this,
          Invocation.method(
            #getSearchCriteria,
            [person],
          ),
        )),
      ) as _i4.Future<_i3.ResponsePerson>);
}

/// A class which mocks [SearchCriteriaUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchCriteriaUseCase extends _i1.Mock
    implements _i3.SearchCriteriaUseCase {
  MockSearchCriteriaUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.BaseRepository get baseRepository => (super.noSuchMethod(
        Invocation.getter(#baseRepository),
        returnValue: _FakeBaseRepository_3(
          this,
          Invocation.getter(#baseRepository),
        ),
      ) as _i3.BaseRepository);

  @override
  _i4.Future<_i2.Either<_i3.Failure, _i3.ResponsePerson>> getSearchCriteria(
          _i3.RequestPerson? person) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSearchCriteria,
          [person],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i3.Failure, _i3.ResponsePerson>>.value(
                _FakeEither_0<_i3.Failure, _i3.ResponsePerson>(
          this,
          Invocation.method(
            #getSearchCriteria,
            [person],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i3.Failure, _i3.ResponsePerson>>);
}

/// A class which mocks [NetWorkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetWorkInfo extends _i1.Mock implements _i3.NetWorkInfo {
  MockNetWorkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isDeviceConnected => (super.noSuchMethod(
        Invocation.getter(#isDeviceConnected),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  List<Object?> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object?>[],
      ) as List<Object?>);
}

/// A class which mocks [ApiHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiHelper extends _i1.Mock implements _i3.ApiHelper {
  MockApiHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_1(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i3.Dio);

  @override
  set dio(_i3.Dio? _dio) => super.noSuchMethod(
        Invocation.setter(
          #dio,
          _dio,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<Object?> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object?>[],
      ) as List<Object?>);
}
