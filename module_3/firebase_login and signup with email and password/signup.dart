import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_signup/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup>
{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void signupp() async
  {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
    Fluttertoast.showToast
      (
        msg: "signing up with ${email.text}",
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.blue.shade100
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle : true,title : Text("sign up area"),backgroundColor: Colors.amber,),
        backgroundColor: Colors.grey[200],
        body: Center
          (
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  TextFormField
                    (
                      controller: email,
                      decoration: InputDecoration
                        (
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                          prefixIcon: Icon(Icons.email),


                        ),
                    ),
                  SizedBox(height: 25,),

                  TextFormField
                    (
                    controller: password,
                    decoration: InputDecoration
                      (
                      hintText: "Enter Your password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      prefixIcon: Icon(Icons.email),


                    ),
                  ),
                  SizedBox(height: 20,),

                  ElevatedButton(onPressed: ()
                      {
                        signupp();
                        ScaffoldMessenger.of(context).showSnackBar
                          (
                            SnackBar
                              (
                                content: Text("signing up with ${email.text}",style: TextStyle(color: Colors.black),),
                                backgroundColor: Colors.amberAccent,
                                duration: Duration(seconds: 3),
                              )
                          );

                        Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
                      }, child: Text("sign up now"))

                ],
              ),
          ),
      );
  }
}
