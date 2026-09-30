  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:percobaan/Controller/confirmreg_controller.dart';

  class ConfirmregPage extends StatelessWidget {
    ConfirmregPage({super.key});
    
    final controller = Get.put(ConfirmregController());

    @override
    Widget build(BuildContext context) {
    ;
 
      return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Text(
              "Nama ${controller.nama}" ,
              style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 0, 35, 110)),
            ),
            Text(
              "Jenis Kelamin ${controller.Jeniskelamin}" ,
              style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 0, 35, 110)),
            ),
             Text(
              "email ${controller.Email}" ,
              style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 0, 35, 110)),
            ),
           
            Text(
              "alamat ${controller.alamat}" ,
              style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 0, 35, 110)),
            ),
           

            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Oke"),
            ),
          ]
        ), 
      );
    }
  }