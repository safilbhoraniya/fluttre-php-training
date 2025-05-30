import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: ThirdScreen(),));
}




class ThirdScreen extends StatefulWidget
{
   const ThirdScreen({super.key});


  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
{


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome"),),
        body:Center
          (



          ),
        drawer: Drawer
          (
          backgroundColor: Colors.white,
          child: Column
            (
            children:
            [

              UserAccountsDrawerHeader(accountName: Text("Tops Technologies"), accountEmail: Text("tops@gmail.com"),currentAccountPicture: CircleAvatar
                (
                backgroundColor: Colors.green,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),



              ),
              ListTile
                (
                leading: Icon(Icons.home), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile
                (
                leading: Icon(Icons.home), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile
                (
                leading: Icon(Icons.home), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile
                (
                leading: Icon(Icons.account_circle), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile
                (
                leading: Icon(Icons.home), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile
                (
                leading: Icon(Icons.home), title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile
                (
                onLongPress: (){
                  Navigator.pop(context);
                },
                subtitle: Text("abcd"),
                trailing: Text("xyz"),
                tileColor:Colors.blue ,
                focusColor: Colors.red,
                splashColor: Colors.pinkAccent,
                leading: Icon(Icons.home), title: Text("Home"),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),

            ],
          ),
        )
    );
  }
}