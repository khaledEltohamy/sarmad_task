import 'package:sarmad_task/src/core/injection/injection_app.dart' as di;
import 'src/utils/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDI();
}

class MyApp extends StatelessWidget {
  final Widget screenRoot;
  const MyApp({super.key, required this.screenRoot});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.getIt<SearchCriteriaBloc>()),
        BlocProvider(create:(context)=> di.getIt<GridViewConvertListViewCubit>())
      ],
      child: MaterialApp(
        title: 'Sarmad Task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: screenRoot,
      ),
    );
  }
}
