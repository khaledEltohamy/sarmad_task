
import '../utils/exports.dart';

enum Flavor { dev, stage , production}

class AppConfig extends InheritedWidget {
  AppConfig({super.key,required String baseApiArg ,  required super.child}){
  baseApi = baseApiArg;
 }
 
  static Flavor? flavor;
  static String baseApi = '';
  
  static AppConfig? of(BuildContext context)=> context.dependOnInheritedWidgetOfExactType(aspect: AppConfig);
 
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}