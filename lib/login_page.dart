import 'package:flutter/material.dart';
import 'package:percobaan/component/editing_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   TextEditingController txtUsername= TextEditingController();
    TextEditingController txtPassword= TextEditingController();
    String statuslogin = "";
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Text("Welcome to application"+statuslogin.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 79, 1, 118)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: EditingTextfield(txtcontroller: txtUsername, myhint: "Username"),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: EditingTextfield(txtcontroller: txtPassword, myhint: "Password"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () { 
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if(username == "admin" && password == "admin"){
                print(" login berhasil");
                setState(() {
                  statuslogin = " admin";
                });
                }else {
                print(" login gagal");
                setState(() {
                  statuslogin = " failed";
                });
                }


              }, child: Text("Login") ),
              ElevatedButton( onPressed: () { }, child: Text("Register") ),

            ],
          )
        ],
        ),
    );
  }
}