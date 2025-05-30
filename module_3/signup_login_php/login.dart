import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'front.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login>
{
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();

  void checklogin()async
  {
    var response = await http.post(
        Uri.parse(
            "http://localhost:8080/students_api/login.php"),
        body: {

          "fname" : username.text.toString(),
          "email":email.text.toString(),
        });
    var data = json.decode(response.body);
    if (data == 0) {
      print("fail");
      final snackbar = SnackBar(
        content: const Text('Login Fail'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      print("success");
      // sharedPreferences.setBool('project', false);
      // sharedPreferences.setString('mob', _mobilenumber.toString());
      Navigator.push(context, MaterialPageRoute(builder: (context) => front()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Column
          (
            children:
            [
              SizedBox(height: 40,),
              TextFormField
                (
                  controller: username,
                  decoration: InputDecoration
                    (
                      hintText: "Enter Your Name",
                      border: OutlineInputBorder(),
                    ),
                ),
              SizedBox(height: 20,),
              TextFormField
                (
                controller: email,
                decoration: InputDecoration
                  (
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 35,),

              ElevatedButton(onPressed: ()
                  {
                    checklogin();
                  }, child: Text("Logg In"))

            ],
          ),
      );
  }
}
