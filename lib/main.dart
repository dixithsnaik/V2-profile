import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v2_profile/all_bindings.dart';
import 'package:v2_profile/controller/navigation_controller.dart';
import 'package:v2_profile/globle/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'V2 Profile',
      initialBinding: AllBindings(),
      initialRoute: "/",
      onGenerateRoute: NavigationController.onGenerateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: GoogleFonts.montserratTextTheme(),
        useMaterial3: true,
      ),
    );
  }
}
