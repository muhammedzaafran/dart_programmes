import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.greenAccent,
          title: Text('CALL OF DUTY GRID'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Card(
                margin: EdgeInsets.all(20),
                color: Colors.teal,
                child: Center(
                  child: Text('Modern Warfare'),
                )),
            Card(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                child: Center(
                  child: Text('Infinite Warfare'),
                )),
            Card(
                margin: EdgeInsets.all(20),
                color: Colors.greenAccent,
                child: Center(
                  child: Text('Advanced Warfare'),
                )),
            Card(
                margin: EdgeInsets.all(20),

                color: Colors.black38,
                child: Center(
                  child: Text('Black Ops '),
                )),
          ],
        ),
      ),
    );
  }
}
