import 'package:flutter/material.dart';

class Brincadeira extends StatefulWidget {
  @override
  _BrincadeiraState createState() => _BrincadeiraState();
}

class _BrincadeiraState extends State<Brincadeira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Este e a minha brincadeira!'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
