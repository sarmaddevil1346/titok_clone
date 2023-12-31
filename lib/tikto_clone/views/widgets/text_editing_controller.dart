
import 'package:flutter/material.dart';

import 'custom_suffix_icon.dart';

TextFormField buildEmailFormField() {
  return TextFormField(
    //controller: emailEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your E-Mail";
      }

    },
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
        hintText: "Enter the E-mail",
        labelText: "E-Mail",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          iconData: Icons.email_outlined,
        )),
  );
}
