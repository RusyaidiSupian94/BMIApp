import 'package:flutter/material.dart';
import 'screen/calculatorScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.grey,
      ),
      home: const MyCalculator(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
