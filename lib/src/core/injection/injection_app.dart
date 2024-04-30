
import 'package:sarmad_task/src/utils/exports.dart';

final getIt = GetIt.instance;

Future<void> initDI() async {

//Cubits - Blocs
 
  getIt.registerLazySingleton<SearchCriteriaBloc>(
      () => SearchCriteriaBloc(getIt()));

//UseCases

  getIt.registerLazySingleton<SearchCriteriaUseCase>(
      () => SearchCriteriaUseCase(getIt()));

//Repositories

  getIt.registerLazySingleton<BaseRepository>(
      () => SearchCriteriaRepository(getIt(), getIt()));


//DataSource

  getIt.registerLazySingleton<BaseDataSource>(
      () => RemoteDataSource());

//Core
  getIt.registerLazySingleton<NetWorkInfo>(
      () => NetworkChecker(internetConnectionChecker: getIt()));

//Extra Injection
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
