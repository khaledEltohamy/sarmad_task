

import '../../utils/exports.dart';

abstract class Validations {
  static const String _nameNoRegExp = r'[a-zA-Zء-ي]';
  static String regexPatternN = r'^[\p{L}\p{N}\p{Zs}]';

  static String? validateName(String? name) {
   if (!RegExp(_nameNoRegExp).hasMatch(name!)) return nameValidtionErrorMassage;
    return null;
  }
   static String? validateOneName(String? fName ,lName ) {
    if (fName == null && lName == null){
      return requiredNameValidtionErrorMassage;
    }
    return null;
  }

  static String? validateCountry(String? country) {
    if (country != null){
    if (!isCountryName(country)) return countryValidtionErrorMassage;
    }
    return null;
  }

static bool isCountryName(String input) {
  input = input.trim().toLowerCase(); 
  for (String country in countriesName) {
    if (country.toLowerCase() == input) {
      return true;
    }
  }
  return false;
}



}
