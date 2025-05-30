
import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  TextEditingController  fname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobile_no = TextEditingController();

  void insertdata()async
  {

     await http.post(
        Uri.parse(
            ""),
        body: {
          "fname": fname.text,
          "mobileno": mobile_no.text,
          "password": password.text,
        });
  }
  void myFunction() async {
    var data =
    {
      "fname": fname.text,
      "mobileno": mobile_no.text,
      "password": password.text,
    };
    //http request here
    await http.post(Uri.parse("http://localhost/flutter-api/first_api/signup.php"),

        body: json.encode(data))
        .then((onResponse){
      print(onResponse.body);
    }).catchError((onerror){
      print(onerror.toString());
    });
    var response = await http.post(Uri.parse("http://localhost/flutter-api/first_api/signup.php"), body:data);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('A network error occurred');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        backgroundColor: Colors.amber,
        body: Container
          (

            decoration: BoxDecoration
              (

                image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjStS_8E0EjFPkUmCuOHBnr8o2C2jiX-D8_Q&s"))
              ),
            height: double.infinity,width: double.infinity,
            child: Column
              (
              mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Container(
                      decoration: BoxDecoration
                        (

                          image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmd0p2nO29QPRJCqaSgjnkVE98nl-ypu748rwaJXgjS5LibxytVp513RUpufWfz7IeKQ&usqp=CAU"))
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                     children: [
                       SizedBox(height: 60,),
                    TextFormField
                      (
                        controller: fname,
                        decoration: InputDecoration(border: OutlineInputBorder(),hintText: "enter your first name"),
                      ),
                    SizedBox(height: 30,),

                    TextFormField
                      (
                      controller: mobile_no,
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: "enter your email"),
                      ),
                       SizedBox(height: 30,),

                    TextFormField
                      (
                      controller: password,
                      decoration: InputDecoration(border: OutlineInputBorder(),hintText: "enter your last name"),
                    ),
                       SizedBox(height: 30,),
                      ]),
                  )),

                  ElevatedButton(onPressed: ()
                      {
                        myFunction();

                      }, child: Text("sign up"))
                ],
              ),
          ),

      );
  }
}


// class MyApp2 extends StatefulWidget {
//   const MyApp2({super.key});
//
//   @override
//   State<MyApp2> createState() => _MyApp2State();
// }
//
// class _MyApp2State extends State<MyApp2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold
//       (
//         body: Center
//           (
//            child: Column
//              (
//               children:
//               [
//                  Container
//                    (
//                     child: Column
//                       (
//                         children:
//                         [
//                           TextFormField
//                             (
//                               controller: email,
//                               decoration: InputDecoration
//                                 (
//                                   hintText: "Enter Your Email",
//                                   labelText: "Enter A Email",
//                                   counter: GridView.count(crossAxisCount: 2),
//
//                                   helperText: "enter your email",
//                                   hintStyle: TextStyle(color: Colors.grey,),
//                                   labelStyle: TextStyle(color: Colors.red),
//                                   helperStyle: TextStyle(color: Colors.green),
//                                   focusColor: Colors.amberAccent,
//                                   hoverColor: Colors.blue,
//
//
//
//                                 ),
//                             ),
//                         ],
//                       ),
//                    )
//               ],
//             ),
//           ),
//       );
//   }
// }



