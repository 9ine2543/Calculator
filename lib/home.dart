// light mode 0xffe1e1e1
// dark mode 0xff363f58
import 'package:flutter/material.dart';

enum CalculatorMode { NORMAL, PROGRAMMER, SCIENTIST }

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  CalculatorMode calculatorMode = CalculatorMode.NORMAL;
  bool themeMode = false; //light = false, dark = true
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: !themeMode ? Color(0xffe1e1e1) : Color(0xff363f58),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.042,
              bottom: MediaQuery.of(context).size.height * 0.042,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(!themeMode ? Icons.wb_sunny : Icons.brightness_2),
                  onPressed: () {
                    setState(() {
                      themeMode = !themeMode;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ));
  }
}
