import 'package:flutter/material.dart';
class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {

  Future<void>showAlertDialog()async{
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.grey[800],
        title: Text('Simple Alert Dialog', style: TextStyle(color: Colors.white),),
        content: SingleChildScrollView(
          child:ListBody(
            children: [
              Text('Welcome To Android Development',
              style: TextStyle(color: Colors.white),)
            ],
          ) ,
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('OK',style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold
          ),
          ),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(backgroundColor: Colors.green,
      title: Text('Alert Dialogs'),),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            ElevatedButton(onPressed: (){
              showAlertDialog();
            },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('Display Simple Alert Dialog')),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                showDialog(context: context, builder: (BuildContext context){
                  return DisplayAdvanceCustomAlertDialog();
                }
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text('Display Custom Alert Dialog'),),
          ],


        ),
      )
    );
  }
}


class DisplayAdvanceCustomAlertDialog extends StatelessWidget {
  const DisplayAdvanceCustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Stack(
        clipBehavior: Clip.none, alignment: Alignment.topCenter,
        children: [
          Container(
            height: 100,
            child:Padding(padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
            child: Column(
              children: [
                Text('Welcome to Android World', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    style: ElevatedButton.styleFrom(primary: Color(0xff2f8d46)),
                  child: Text('ok',style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
              ],
            ),
            ),
          ),
          Positioned(top: -60, child: CircleAvatar(
            backgroundColor: Color(0xff2f8d46),
            radius: 50,
            child: Image.network('https://preview.redd.it/co3h2q5bmg151.jpg?auto=webp&s=905d032722712162a8722bb38784cc55989dcb43',height: 70, width: 70,),
          ),
          ),
        ],
      ),
    );
  }
}
