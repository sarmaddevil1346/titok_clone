import 'package:flutter/material.dart';

import '../../../widgets/custom_suffix_icon.dart';

TextFormField buildPasswordFormField(TextEditingController passwordEditingController) {
  return TextFormField(
   // controller: passwordEditingController,
    validator: (value) {
      if(value!.isEmpty)
      {
        return "Please Enter your Password";
      }
      return null;
    },
    keyboardType: TextInputType.emailAddress,
    obscureText: true,
    decoration: const InputDecoration(
        hintText: "Enter the Password",
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          iconData: Icons.lock_outline,
        )),
  );
}