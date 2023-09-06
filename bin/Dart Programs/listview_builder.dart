import 'package:flutter/material.dart';

void main(){
  runApp(builder1());
}
class builder1 extends StatelessWidget {


  final List<String> entries = <String>['Captain', 'Lieutenant', 'Seargent'];
  final List<int> colorCodes = <int>[600, 500,400];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.teal[colorCodes[index]],
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              }
          )
      ),
    );
  }
}