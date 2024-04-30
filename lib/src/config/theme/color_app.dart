import 'dart:ui';

class ColorApp {
  static primaryButtonColor() => HexColor.fromHex("#2F53A2");
  static primaryColor({double? opacity}) =>
      HexColor.fromHex("#FAA21C").withOpacity(opacity ?? 1);
  static blackColor() => HexColor.fromHex('#000000');
  static greySuperLightColor() => HexColor.fromHex('#F2F2F2');
  static greyLightColor() => HexColor.fromHex('#DBDBDB');
  static greySubMediumColor() => HexColor.fromHex('#ADA4A5');
  static greyMediumColor() => HexColor.fromHex('#F2F2F2');
  static greyDarkColor() => HexColor.fromHex('#999999');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    //Adding FF to the beginning of the string
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
