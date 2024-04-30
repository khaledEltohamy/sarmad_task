import 'package:sarmad_task/src/core/injection/injection_app.dart' as di;
import 'src/utils/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
        home: const SearchCriterialscreen(),
      ),
    );
  }
}
