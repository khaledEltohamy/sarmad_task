// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/theme/color_app.dart';

import 'validations.dart';

class TextFieldApp extends StatelessWidget implements Validations {
  final String hint;
  final Key? key;
  final String? label;
  final Color? hintColor;
  final TextEditingController controllerText;
  final TextInputType textType;
  final String? errors;
  final bool isPassword;
  final bool withPrefixIcon;
  final Widget? prefixChild;
  final FocusNode? focusFieldNode;
  final double? width;
  final TextInputAction action;
  final Widget? suffixIcon;
  final Function()? onTap;
  final Function(String?)? onChange;
  final Function(String)? onFieldSubmitted;
  final Function()? onEditingComplete;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final double? widthPrifxIcon;
  final String? Function(String?)? validator;

  TextFieldApp({
    required this.hint,
    required this.controllerText,
    required this.textType,
    required this.isPassword,
    this.label,
    required this.withPrefixIcon,
    required this.prefixChild,
    required this.action,
    this.focusFieldNode,
    this.errors,
    this.suffixIcon,
    this.onTap,
    this.readOnly = false,
    this.validator,
    this.onChange,
    this.width,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.widthPrifxIcon,
    this.hintColor,
    this.padding, 
    this.key,
  });

  @override
  Widget build(BuildContext context) {
    String locale = "en";
    return TextFormField(
      key: key,
      onChanged: onChange,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      readOnly: readOnly,
      focusNode: focusFieldNode,

      onTap: onTap,
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r'^0+')),
      ],
      keyboardType: textType,
      validator: (value) => validator!(value),
      // validator: (value) => isPassword ? Validations.validatePassword(value) : Validations.validatePhone(value),
      cursorColor: ColorApp.primaryColor(),
      controller: controllerText,
      textInputAction: action,

      decoration: _textFieldInputDecoration(context, locale),
      obscureText: isPassword,
    );
  }

  InputDecoration _textFieldInputDecoration(
          BuildContext context, String locale) =>
      InputDecoration(
        contentPadding: padding ??
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: hintColor ?? ColorApp.greyLightColor())),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorApp.greyLightColor()),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red)),
        // isDense: true,
        errorText: errors ?? errors,
        hintStyle: TextStyleApp.subTitleTextStyle(
            hintColor ?? ColorApp.greySubMediumColor(),
            fontWeight: FontWeight.w300),
        labelStyle: const TextStyle(
          color: Color(0xFF212121),
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 1.60,
          letterSpacing: 0.25,
        ),
        errorStyle: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.w300, fontSize: 10),
        hintTextDirection:
            locale == "ar" ? TextDirection.rtl : TextDirection.ltr,

        hintText: hint,
        labelText: label,
        prefixIconConstraints: widthPrifxIcon == null
            ? const BoxConstraints(minWidth: 60, maxWidth: 90)
            : BoxConstraints(
                minWidth: (widthPrifxIcon! - 10).toDouble(),
                maxWidth: widthPrifxIcon!),
        prefixIcon: withPrefixIcon ? _prefixIcon(locale) : null,
        prefixStyle: TextStyle(locale: Locale(locale)),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: suffixIcon,
        ), //Adding Suffix Icon to password Form
        suffixIconConstraints: const BoxConstraints(minWidth: 20, maxWidth: 30),
      );

  Widget _prefixIcon(String locale) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 50,
      child: Center(
        child: Container(
          child: prefixChild,
        ),
      ),
    );
  }
}

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}

class TextStyleApp {
  static TextStyle subTitleTextStyle(Color color,
          {double? size, FontWeight? fontWeight, Locale? locale}) =>
      TextStyle(
        color: const Color(0xFFADA4A5),
        fontSize: size ?? 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0.12,
        letterSpacing: 0.25,
      );
}
