import 'package:flutter/material.dart';
import 'text_field_app.dart';
import 'validations.dart';

class TextFieldWidget {
  // users information Field
  static Widget nameTextField({
    required BuildContext context,
    required TextEditingController textEditingController,
    String? hint,
    String? label,
    Key? key ,
    Map<String, dynamic>? map,
    required FocusNode focusNode,
  }) =>
      TextFieldApp(
        
        hint: hint ?? "",
        controllerText: textEditingController,
        textType: TextInputType.name,
        isPassword: false,
        action: TextInputAction.next,
        label: label ?? hint,
        withPrefixIcon: false,
        prefixChild: const Icon(Icons.person_outline),
        focusFieldNode: focusNode,
        validator: (_) => Validations.validateName(textEditingController.text),
      );

  // static Widget emailTextField({
  //   required BuildContext context,
  //   String? hint,
  //   label,
  //   required TextEditingController textEditingController,
  //   Map<String, dynamic>? map,
  //   required FocusNode focusNode,
  // }) =>
  //     TextFieldApp(
  //       onChange: (val) {},
  //       controllerText: textEditingController,
  //       textType: TextInputType.emailAddress,
  //       isPassword: false,
  //       action: TextInputAction.next,
  //       label: label ?? "",
  //       withPrefixIcon: false,
  //       errors: map != null ? _checkErrorMassage(map, 'email') : null,
  //       prefixChild: const Icon(Icons.mail_outline_rounded),
  //       focusFieldNode: focusNode,
  //       hint: hint ?? " ",
  //       validator: (_) => Validations.validateEmail(textEditingController.text),
  //     );

  // static Widget phoneTextField({
  //   required BuildContext context,
  //   String? hint,
  //   double? width,
  //   String? label,
  //   required TextEditingController textEditingController,
  //   Map<String, dynamic>? map,
  //   required FocusNode focusNode,
  // }) =>
  //     KeyboardActions(
  //       autoScroll: false,
  //       config: KeyBoardActionsConfig.buildSingleConfig(context, focusNode),
  //       child: TextFieldApp(
  //         width: width,
  //         focusFieldNode: focusNode,
  //         hint: hint ?? "",
  //         controllerText: textEditingController,
  //         textType: TextInputType.phone,
  //         isPassword: false,
  //         action: TextInputAction.done,
  //         errors: map != null
  //             ? _checkErrorMassage(map, 'phone', context: context)
  //             : null,
  //         label: label ?? hint,
  //         withPrefixIcon: true,
  //         validator: (_) =>
  //             Validations.validatePhone(textEditingController.text),
  //         prefixChild: Container(),
  //       ),
  //     );
  // static Widget numericTextField({
  //   required BuildContext context,
  //   String? hint,
  //   double? width,
  //   String? label,
  //   required TextEditingController textEditingController,
  //   Map<String, dynamic>? map,
  //   required FocusNode focusNode,
  // }) =>
  //     Container(
  //       width: width,
  //       child: KeyboardActions(
  //         autoScroll: false,
  //         config: KeyBoardActionsConfig.buildSingleConfig(context, focusNode),
  //         child: TextFieldApp(
  //           width: width,
  //           focusFieldNode: focusNode,
  //           hint: hint ?? "",
  //           controllerText: textEditingController,
  //           textType: TextInputType.number,
  //           isPassword: false,
  //           action: TextInputAction.done,
  //           errors: map != null
  //               ? _checkErrorMassage(map, 'phone', context: context)
  //               : null,
  //           label: label ?? hint,
  //           withPrefixIcon: false,
  //           validator: (_) =>
  //               Validations.validatePhone(textEditingController.text),
  //           prefixChild: Text(label!),
  //         ),
  //       ),
  //     );

  // static Widget searchTextField({
  //   required BuildContext context,
  //   required TextEditingController textEditingController,
  //   String? hint,
  //   Map<String, dynamic>? map,
  //   required FocusNode focusNode,
  //   Function()? onTap,
  // }) =>
  //     TextFieldApp(
  //       hint: hint ?? "",
  //       width: MediaQuery.of(context).size.width,
  //       controllerText: textEditingController,
  //       textType: TextInputType.text,
  //       isPassword: false,
  //       errors: map != null ? _checkErrorMassage(map, 'name') : null,
  //       action: TextInputAction.next,
  //       label: "",
  //       withPrefixIcon: true,
  //       padding: const EdgeInsets.symmetric(horizontal: 12),
  //       widthPrifxIcon: 50,
  //       readOnly: true,
  //       prefixChild:
  //           const Icon(Icons.search, color: Color.fromARGB(255, 172, 172, 172)),
  //       focusFieldNode: focusNode,
  //       validator: (_) => null,
  //       onTap: onTap,
  //     );

  // static Widget passwordTextField({
  //   required BuildContext context,
  //   String? hint,
  //   double? width,
  //   String? label,
  //   required TextEditingController textEditingController,
  //   Map<String, dynamic>? map,
  //   FocusNode? focusNode,
  // }) =>
  //     BlocBuilder<VisiblePasswordCubit, bool>(
  //       builder: (context, state) {
  //         return TextFieldApp(
  //             width: width,
  //             focusFieldNode: focusNode,
  //             hint: hint ?? "",
  //             controllerText: textEditingController,
  //             textType: TextInputType.text,
  //             isPassword: state,
  //             action: TextInputAction.done,
  //             errors: map != null
  //                 ? _checkErrorMassage(map, 'confirm_password')
  //                 : null,
  //             label: label ?? hint,
  //             withPrefixIcon: false,
  //             suffixIcon: GestureDetector(
  //               onTap: () {
  //                 FocusScope.of(context).unfocus();
  //                 context
  //                     .read<VisiblePasswordCubit>()
  //                     .changeVisiblePassword(); //Need to convert to stf widget
  //               },
  //               child: state
  //                   ? Icon(Icons.visibility_off,
  //                       color: ColorApp.greyMediumColor())
  //                   : Icon(Icons.visibility, color: ColorApp.primaryColor()),
  //             ),
  //             validator: (_) =>
  //                 Validations.validatePassword(textEditingController.text),
  //             prefixChild: null);
  //       },
  //     );

  // static Widget confirmPasswordTextField({
  //   required BuildContext context,
  //   String? hint,
  //   double? width,
  //   required TextEditingController textEditingController,
  //   required TextEditingController confrimtextEditingController,
  //   Map<String, dynamic>? map,
  //   FocusNode? focusNode,
  // }) =>
  //     TextFieldApp(
  //         width: width,
  //         focusFieldNode: focusNode,
  //         hint: hint ?? "",
  //         controllerText: textEditingController,
  //         textType: TextInputType.text,
  //         isPassword: true,
  //         action: TextInputAction.done,
  //         errors:
  //             map != null ? _checkErrorMassage(map, 'confirm_password') : null,
  //         label: hint ?? "",
  //         withPrefixIcon: false,
  //         validator: (_) => Validations.validateConfirmPassword(
  //             textEditingController.text, confrimtextEditingController.text),
  //         prefixChild: null);


  // static Widget _prefixIcon(String locale, BuildContext context) {
  //   return Container(
  //     height: 52,
  //     margin: const EdgeInsets.only(right: 10),
  //     child: Center(
  //       child: BlocBuilder<CountryCodeCubit, BaseState>(
  //         builder: (context, state) {
  //           final cubit = CountryCodeCubit.of(context);
  //           if (cubit.selectedCountry != null) {
  //             print(cubit.selectedCountry!.flag);
  //           }
  //           return GestureDetector(
  //             onTap: () {
  //               cubit.onPressedShowBottomSheet(context);
  //             },
  //             child: Directionality(
  //               textDirection: TextDirection.ltr,
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: <Widget>[
  //                   Expanded(
  //                     child: Text(
  //                       cubit.selectedCountry!.callingCode,
  //                       textAlign: TextAlign.center,
  //                       style: const TextStyle(
  //                         color: Colors.black,
  //                         fontSize: 15,
  //                         fontFamily: 'Urbanist',
  //                         fontWeight: FontWeight.w600,
  //                         height: 1.40,
  //                         letterSpacing: 0.20,
  //                       ),
  //                       textDirection: TextDirection.ltr,
  //                     ),
  //                   ),
  //                   const SizedBox(width: 6),
  //                   Image.asset(
  //                     cubit.selectedCountry!.flag,
  //                     package: countryCodePackageName,
  //                     width: 20,
  //                     height: 20,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }


}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

