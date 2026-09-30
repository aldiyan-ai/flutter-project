import 'package:flutter/material.dart';
import 'package:percobaan/component/editing_textfield.dart';
import 'package:get/get.dart';
import 'package:percobaan/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtalamat = TextEditingController();
    return Scaffold(
       appBar: AppBar(
        title: Text("Registration Page"),
      ), 
      body: Column(
          children: [
            EditingTextfield(txtcontroller: txtNama, myhint: "input name"),
            EditingTextfield(txtcontroller: txtJenisKelamin, myhint: "input gender (Laki-laki / Perempuan)"),
            EditingTextfield(txtcontroller: txtalamat, myhint: "input alamat"),
            ElevatedButton(
            onPressed: () {
              // get to untuk pindah
              // argument untuk kirim data
              // get off
              Get.toNamed(
                Routes.confirmreg,
                arguments: {
                  'name': txtNama.text.toString(),
                  'gender': txtJenisKelamin.text.toString(),
                  'alamat': txtalamat.text.toString(),
                  // dari widget kalian,
                  // dll
                },
              );
            },
            child: Text("Send"),
            ),
            const SizedBox(height: 40),
            

        ],)
    );

    
  }
}