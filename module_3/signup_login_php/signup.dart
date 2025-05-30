import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:signup_php/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  void insert() async
  {
    await http.post(
      Uri.parse(
          "http://localhost:8080/students_api/signup.php"),
      body: {
        "fname": fname.text,
        "lname": lname.text,
        "email": email.text,



      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Center
          (
            child: Column
              (
                children:
                [
                  SizedBox(height: 30,),
                  TextFormField
                    (
                      controller: fname,
                      decoration: InputDecoration
                        (
                          hintText: "Enter your name",
                          border: OutlineInputBorder(),
                          ),
                    ),

                  SizedBox(height: 15,),
                  TextFormField
                    (
                    controller: lname,
                    decoration: InputDecoration
                      (
                      hintText: "Enter your lastname",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 15,),
                  TextFormField
                    (
                    controller: email,
                    decoration: InputDecoration
                      (
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  ElevatedButton(onPressed: ()
                      {
                        insert();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                      }, child: Text("signup"))



                ],
              ),
          ),
      );
  }
}
