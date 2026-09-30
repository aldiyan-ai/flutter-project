import 'package:flutter/material.dart';
import 'package:percobaan/component/editing_textfield.dart';
import 'package:get/get.dart';
import 'package:percobaan/Controller/kalkulator_controller.dart';

class Kalkulator2Page extends StatelessWidget {
  Kalkulator2Page({super.key});
final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("kalkulator")
        ),
        backgroundColor: const Color.fromARGB(255, 171, 231, 248),
      body: Column(
        children: [
          EditingTextfield(txtcontroller: txtAngka1, myhint: "input angka 1"),
          EditingTextfield(txtcontroller: txtAngka2, myhint: "input angka 2"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          ElevatedButton(
            onPressed: () {
              
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.tambah(angka1, angka2);
              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 1));
            },
            child: Text("+"),
          ),
          ElevatedButton(
            onPressed: () {
              
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.kurang(angka1, angka2);
              style: const TextStyle(color: Color.fromARGB(255, 2, 2, 2));
            },
            child: Text("-"),
          ),
          ElevatedButton(
            onPressed: () {
              
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.kali(angka1, angka2);
              style: const TextStyle(color: Color.fromARGB(255, 6, 6, 6));
            },
            child: Text("x"),
          ),
          ElevatedButton(
            onPressed: () {
              
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.bagi(angka1, angka2);
              style: const TextStyle(color: Color.fromARGB(255, 5, 5, 5));
            },
            child: Text("/"),
            
          ),
          ],
          ),
          ElevatedButton(
            onPressed: () {
              txtAngka1.clear();
              txtAngka2.clear();
              controller.Reset();
            },
            child: Text("RESET"),
            
          ),
           Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
          ],
      ),
    );
  }
}