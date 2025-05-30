import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home:MyApp() ,debugShowCheckedModeBanner: false,) );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  List list=[];
  Future<void> getdata()async
  {
    var url = Uri.parse("http://localhost:8080/bytes/view.php");
    var resp = await http.get(url);
    list =  jsonDecode(resp.body);
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   setState(() {
     getdata();
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      ( 
        body: ListView.builder
          (
          itemCount: list.length,
            itemBuilder:(context ,index)
                {
                  return Container
                    (
                      child: ListTile
                        (

                          title: Text(list[index]["name"]),
                          subtitle: Text(list[index]["email"]),
                        ),
                   );
                }
          ),
      );
  }
}


