import 'package:bmicalculatorapp/BMICalculator.dart';
import 'package:bmicalculatorapp/CalculateBmi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BMI(),
      debugShowCheckedModeBanner: false,
    );

  }

}

