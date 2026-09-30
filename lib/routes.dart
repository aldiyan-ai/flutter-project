import 'package:get/get.dart';
import 'package:percobaan/regis/confirmreg_page.dart';
import 'package:percobaan/regis/registration_page.dart';


class Routes {
  static const String registration = '/registration';
  static const String confirmreg = '/confirmreg';
  
  static final mypages=[
    GetPage(name: registration, page: ()=>  RegistrationPage()),
    GetPage(name: confirmreg, page: ()=>  ConfirmregPage()),
  ];
}