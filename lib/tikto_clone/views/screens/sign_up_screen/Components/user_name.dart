import 'package:flutter/material.dart';

import '../../../widgets/custom_suffix_icon.dart';

TextFormField buildUsernameFormField(userNameEditingController) {
  return TextFormField(
    controller: userNameEditingController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please Enter your Username";
      }

    },
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
        hintText: "Enter the Username",
        labelText: "Username",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          iconData: Icons.person_3_outlined,
        )),
  );
}
