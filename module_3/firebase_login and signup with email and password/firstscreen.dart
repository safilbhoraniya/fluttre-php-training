import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen>
{
  void logout()async
  {
    await FirebaseAuth.instance.signOut();

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
                Text("welcome",style: TextStyle(color: Colors.amber,fontSize: 50),),


              ],
            ),

        ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        logout();

      },child: Text("log out"),),



      );
  }
}
