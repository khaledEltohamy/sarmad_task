import 'exports.dart';

// ignore: constant_identifier_names
const String BASE_URL = "https://develop.sarmad.sa/api/v1/";
const String individual =  "integration/focal/screen/individual";
//errors
// ignore: constant_identifier_names
const String OFFLINE_ERROR = "Offline Mode";
// ignore: constant_identifier_names
const String SERVER_ERORR = "Server Not Stable";

//KEYS 
const String firstNameFormKey = "FirstName_FormEditing";
const String middeNameFormKey = "MiddelName_FormEditing";
const String nationaltyKey =    "Nationalty_FormEditing";


class ConstantsFlavor {
    static bool get isProductionMode =>
      (AppConfig.flavor == Flavor.production|| AppConfig.flavor == Flavor.stage) && kReleaseMode;
  
}