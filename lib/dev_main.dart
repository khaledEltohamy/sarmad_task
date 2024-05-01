
import 'src/utils/exports.dart';
import 'package:sarmad_task/src/core/injection/injection_app.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDI();
  var configuredApp = AppConfig(
    baseApiArg: BASE_URL,
    child:const MyApp(screenRoot: SearchCriterialscreen()),
  );
  AppConfig.flavor = Flavor.dev;

  runApp(configuredApp);
}