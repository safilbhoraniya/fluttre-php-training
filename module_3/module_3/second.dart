import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/dashboardpage.dart';




class LoginForm extends StatefulWidget
{
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
{
  late SharedPreferences sharedPreferences;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late bool newuser;
  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    checklogin();
  }

  void checklogin() async
  {
    sharedPreferences = await SharedPreferences.getInstance();

    newuser = (sharedPreferences.getBool('mylogin') ?? true);
    print(newuser);

    if (newuser == false)
    {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => dashboardpage()));
    }


  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Login Form"),),
      body: Center
        (
        child: Column
          (
          children:
          [
            TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Your Email",labelText: "Email",icon: Icon(Icons.email)),),
            SizedBox(height: 10,),
            TextFormField(controller: pass,obscureText:true,decoration: InputDecoration(hintText: "Enter Your Password",labelText: "Password",icon: Icon(Icons.password)),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
                sharedPreferences.setBool('mylogin', false);
                sharedPreferences.setString('myemail',email.text.toString() );

                Navigator.push(context,MaterialPageRoute(builder: (context) => dashboardpage()));
                print("Logged in succesfully");


            }, child: Text("Login"))

          ],
        ),
      ),
    );
  }


}