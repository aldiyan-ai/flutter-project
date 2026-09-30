  import 'package:flutter/material.dart';
  import 'package:get/get.dart';

  class ConfirmregController extends GetxController{
    late String nama;
    late String Jeniskelamin;
    late String alamat;


    @override
    void onInit() {
      super.onInit();
      final arguments = Get.arguments;
      nama = arguments['name']; 
      Jeniskelamin = arguments['gender'];
      alamat = arguments['alamat'];
    }
    // Add your controller logic here
  }