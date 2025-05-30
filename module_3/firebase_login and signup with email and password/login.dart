import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_signup/signup.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>
{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() async
  {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);

  }

  @override
  Widget build(BuildContext context)
  {

    return Scaffold
      (
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
                    decoration: InputDecoration(hintText: "Enter your email",border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),),prefixIcon: Icon(Icons.email)),
                  ),
                SizedBox(height: 25,),

                TextFormField
                  (
                  controller: password,
                  decoration: InputDecoration(hintText: "Enter your Password",border:OutlineInputBorder(borderRadius: BorderRadius.circular(10),),prefixIcon: Icon(Icons.email)),
                ),
                SizedBox(height: 20,),

                ElevatedButton(onPressed: ()
                    {
                      login();
                    }, child: Text("login")),
                SizedBox(height: 20,),

                TextButton(onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                    }, child: Text("sign up",style: TextStyle(color: Colors.red),))

              ],
            ),
        ),

      );
  }
}
