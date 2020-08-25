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
              bottom: MediaQuery.of(context).size.height * 0.1,
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
                    height: MediaQuery.of(context).size.height * 0.52,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int i = 5; i > 0; i--)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              for (var j = 0; j < 4; j++)
                                i == 1 && j == 0
                                    ? Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.19,
                                        decoration: BoxDecoration(
                                            color: i == 5 || j == 3
                                                ? _themeWidget.operandsColor()
                                                : _themeWidget.numpadColor(),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.white,
                                                  offset: -Offset(5, 5),
                                                  blurRadius: 15),
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      216, 213, 208, 1),
                                                  offset: Offset(4.5, 4.5),
                                                  blurRadius: 15)
                                            ]),
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: Text('1'),
                                            )
                                          ],
                                        ),
                                      )
                                    : i == 1 && j == 1
                                        ? new Container()
                                        : Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.19,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.19,
                                            decoration: BoxDecoration(
                                                color: i == 5 || j == 3
                                                    ? _themeWidget
                                                        .operandsColor()
                                                    : _themeWidget
                                                        .numpadColor(),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.white,
                                                      offset: -Offset(5, 5),
                                                      blurRadius: 15),
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          216, 213, 208, 1),
                                                      offset: Offset(4.5, 4.5),
                                                      blurRadius: 15)
                                                ]),
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Text('1'),
                                                )
                                              ],
                                            ),
                                          )
                            ],
                          )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
