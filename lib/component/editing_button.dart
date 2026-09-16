import 'package:flutter/material.dart';

class EditingButton extends StatelessWidget {
  final String mytext;
  final Color backgroundcolor;
  
  const EditingButton({super.key, required this.mytext, required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundcolor,
      child: Center(
        child: Text(
          mytext,
          style: const TextStyle(color: Color.fromARGB(255, 4, 146, 255)),
        ),
      ),
    );
  }
}