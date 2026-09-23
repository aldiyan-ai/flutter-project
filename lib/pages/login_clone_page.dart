import 'package:flutter/material.dart';
import 'package:percobaan/component/editing_textfield.dart';


class LoginClonePage extends StatelessWidget {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    //pindahkan login clone sebelumnya kesini
    //buatlah menjadi reusable component (setiap widget)
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Clone Page"),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Image
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.nCmb7tgt3ol5ICEHVcTbEwHaHk?r=0&pid=Api&P=0&h=180',
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.image, color: Color.fromARGB(255, 252, 247, 247));
                    },
                  ),
                ),
                const SizedBox(height: 40),

                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),

                EditingTextfield(
                  txtcontroller: txtUsername,
                  myhint: 'Phone number, username, or email',
                ),
                const SizedBox(height: 20),
                EditingTextfield(
                  txtcontroller: txtPassword,
                  myhint: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0095F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}