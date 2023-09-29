import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Padding(padding:  EdgeInsets.all(17.0),
        child: Column(
          children:[
            Text('INSTAGRAM',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                  fontSize: 30,color: Colors.black),
            ),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Email address'),),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration
              (border: OutlineInputBorder(),
                labelText: ' Password'),),

            SizedBox(height: 20,), Text('Forgot Password'),
            SizedBox(height: 20,),

            Icon(Icons.facebook_sharp),SizedBox(
              width: 10,
              height: 10,
            ),
            Text('Sign in with facebook'),
          ],
        ),),
    );
  }
}
