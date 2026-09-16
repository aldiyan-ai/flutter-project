import 'package:flutter/material.dart';

class EditingTextfield extends StatelessWidget {
  final TextEditingController txtcontroller ;
  final String myhint;
  final bool isPassword;

  const EditingTextfield({super.key, required this.txtcontroller, required this.myhint, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: (myhint),
        hintStyle: const TextStyle(color: Color.fromARGB(255, 237, 172, 172)),
      ),
    );
  }
}