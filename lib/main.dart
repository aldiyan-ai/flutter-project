import 'package:flutter/material.dart';
import 'package:percobaan/kalkulator/kalkulator2_page.dart';
import 'package:percobaan/login_page.dart';
import 'package:percobaan/pages/login_clone_page.dart';
// import 'package:percobaan/kalkulator_page.dart';
// import 'package:percobaan/loginclone_page.dart';
import 'package:get/get.dart';
import 'package:percobaan/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MY Learning App',
      initialRoute: Routes.registration,
      getPages: Routes.mypages,
    );  
  }
}

