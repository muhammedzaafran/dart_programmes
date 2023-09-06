import 'package:flutter/material.dart';

void main(){
  runApp(builder1());
}
class builder1 extends StatelessWidget {


  final List entries = ['Captain', 'Lieutenant', 'Seargent'];
  final List colorCodes = [600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.teal[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )
      ),
    );
  }
}

