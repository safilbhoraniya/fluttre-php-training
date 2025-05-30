import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firstscreen.dart';
import 'login.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp
    (
      options: FirebaseOptions
        (
          apiKey: "AIzaSyBH9dFLJEQpSFn3_B94vtQAnpiosIi4sg4",
          appId: "1:310010238664:android:b088968ada1b4d71fa77fd",
          messagingSenderId: "310010238664",
          projectId: "bytesbizz-2bee9"
        )
    );

  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder
      (
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context ,snapshot)
        {
          if(snapshot.hasData)
            {
              return firstscreen();
            }
          else
            {
              return loginpage();
            }
        }
      );

  }
}




