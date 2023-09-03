import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:titok_clone/tikto_clone/controller/auth_controller.dart';
import 'package:titok_clone/tikto_clone/views/screens/Sign_in_screen/signin_screen.dart';

import 'Components/ThemeData.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: buildAppBarTheme(),
          inputDecorationTheme: buildInputDecorationTheme(),
          iconTheme: buildIconThemeData(),
          useMaterial3: false,
        ),
        home: const SignInScreen());
  }
}
