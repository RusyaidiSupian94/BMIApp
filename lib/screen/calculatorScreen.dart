import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),//for get title from main
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              labelText: 'Height in (cm)',
               icon: Icon(Icons.trending_up_outlined),
            ),
          ),
          
          SizedBox(height: 400),//this for margin only to make more tidy
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              labelText: 'Weight in (kg)',
              icon: Icon(Icons.monitor_weight)
            ),
          ),

          SizedBox(height: 10)
        ],
      ),
    );
  }
}
