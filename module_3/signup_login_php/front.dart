import 'package:flutter/material.dart';

class front extends StatefulWidget {
  const front({super.key});

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
       body: Column
         (
           children:
           [
             SizedBox(height: 20,),
             Text("welcome to user screen dashboard",style: TextStyle(color: Colors.grey),),
           ],
         ),
        );
  }
}
