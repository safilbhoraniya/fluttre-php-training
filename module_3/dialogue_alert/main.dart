import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: alertdialogue(),));
}

class alertdialogue extends StatefulWidget {
  const alertdialogue({super.key});

  @override
  State<alertdialogue> createState() => _alertdialogueState();
}


enum Product { Apple, Samsung, Oppo, Redmi }


Future<Product?> selectionalert(BuildContext context)
{
  return showDialog<Product>
    (
      context: context,
      builder: (BuildContext context)
      {
        return SimpleDialog
          (
            title: Text("selection"),

            children:
            [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Product.Apple);
                },
                child:  Text('Apple'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Product.Samsung);
                },
                child:  Text('samsung'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Product.Oppo);
                },
                child:  Text('oppo'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Product.Redmi);
                },
                child:  Text('Redmi'),
              ),
            ],
          );
      }
    );
}



class _alertdialogueState extends State<alertdialogue>
{


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
                  ElevatedButton(onPressed: ()
                      {
                        selectionalert(context);


                      }, child: Text("simpledialgue ")),
                ],
              ),

        ),


      );
  }




}
