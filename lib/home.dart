// light mode 0xffe1e1e1
// dark mode 0xff363f58
import 'package:flutter/material.dart';

import 'style/colorTheme.dart';

enum CalculatorMode { NORMAL, PROGRAMMER, SCIENTIST }

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  CalculatorMode calculatorMode = CalculatorMode.NORMAL;
  ThemeWidget _themeWidget = ThemeWidget(true);
  //light = true, dark = false
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _themeWidget.mainThemeColor(),
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
                  icon: _themeWidget.iconTheme(),
                  onPressed: () {
                    setState(() {
                      _themeWidget.setThemeMode(!_themeWidget.getThemeMode());
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
                  child: Table(
                    border: TableBorder.all(
                        width: MediaQuery.of(context).size.width * 0.01,
                        color: Colors.black),
                    children: [
                      for (var i = 5; i >= 0; i--)
                        TableRow(children: [
                          for (var i = 0; i < 4; i++)
                            Container(
                              width: MediaQuery.of(context).size.width * 0.225,
                              height: MediaQuery.of(context).size.width * 0.225,
                              color: Colors.white,
                            )
                        ])
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
