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
    return BlocProvider(
     create: (context) => di.getIt<SearchCriteriaBloc>(),     
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
