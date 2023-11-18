import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "New Bmi Calc",style: TextStyle(
            fontSize: 30,color: Colors.pink
          ),
          ),
        ),
      ),
    );
  }
}
