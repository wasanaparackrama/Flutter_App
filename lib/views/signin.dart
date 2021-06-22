import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

//D:\FLUTTER\CHAT APP\My_app\chat_app\lib\widgets\widgets.dart
class SignIn extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:appBarMain(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TextField(
              style: simpleTextFieldStyle(),
              decoration: textFieldInputDecoration("email")
              
            ),
            TextField(
              style: simpleTextFieldStyle(),
              decoration: textFieldInputDecoration("password")
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.centerRight ,
              child:Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Text("Forgot Password",style: simpleTextFieldStyle(),),
            ) ,
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff007EF4),
                    const Color(0xff2A75BC)
                  ]
                )
              ),
              child:Text("Sign In",style: TextStyle(
                color: Colors.white,
                fontSize: 17
              ),),
            )
          ],
          ),
      ),
    );
  }
}