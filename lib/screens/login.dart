import 'package:cinema/utils/constant.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("A Cinema"), backgroundColor: Colors.black),
      body: Body(),
     );
  }

  Padding Body() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Log in',
                style: TextStyle(fontSize: 20, color: Colors.white), 
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Type your email",
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white,)
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              style: TextStyle(color: Colors.white), 
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Type your password",
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  Icons.visibility,
                )
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text('Forgot Password', style: TextStyle(color: Colors.white),),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Constants.primaryColor),
                child: const Text('Login', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )
          ),
          Row(
            children: <Widget>[
              const Text('Does not have account?', style: TextStyle(color: Colors.white),),
              TextButton(
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {

                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
    
      )
    );
  }
}