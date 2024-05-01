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

}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

