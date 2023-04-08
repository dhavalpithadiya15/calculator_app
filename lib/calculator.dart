import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String showvalue = "";
  String fristValue = "";
  String secondValue = "";
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    double totalHeight = MediaQuery.of(context).size.height;
    double totalWidth = MediaQuery.of(context).size.width;
    double statusbarHeight = MediaQuery.of(context).padding.top;
    double bodyHeight = totalHeight - statusbarHeight;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red.withOpacity(0.5),
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(
                right: 10,
              ),
              height: bodyHeight * 0.4,
              child: Text(
                "${showvalue}",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35),
              ),
              // color: Colors.blue.withOpacity(0.5),
            ),
            Container(
              height: bodyHeight * 0.6,
              decoration: BoxDecoration(
                color: Colors.blue[100]!.withOpacity(0.7),
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(30),
                  topEnd: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    // color: Colors.red.withOpacity(0.5),
                    height: bodyHeight * 0.12,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              showvalue = "";
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.deepPurple.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "C",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            passingOpretor("%");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.pink.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "%",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: bodyHeight * 0.12,
                          // color: Colors.orange.withOpacity(0.5),
                          width: totalWidth * 0.25,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  showvalue = showvalue.substring(
                                      0, showvalue.length - 1);
                                });
                              },
                              icon: Icon(Icons.backspace_outlined)),
                        ),
                        InkWell(
                          onTap: () {
                            passingOpretor("/");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.blueGrey.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: FaIcon(
                              FontAwesomeIcons.divide,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.orange.withOpacity(0.5),
                    height: bodyHeight * 0.12,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            forPassingValue("7");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.deepPurple.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "7",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("8");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.pink.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("9");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.orange.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "9",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: bodyHeight * 0.12,
                          // color: Colors.blueGrey.withOpacity(0.5),
                          width: totalWidth * 0.25,
                          child: IconButton(
                            onPressed: () {
                              passingOpretor("*");
                            },
                            icon: FaIcon(FontAwesomeIcons.multiply),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green.withOpacity(0.5),
                    height: bodyHeight * 0.12,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            forPassingValue("4");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.deepPurple.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("5");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.pink.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("6");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.orange.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.blueGrey.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: IconButton(
                              onPressed: () {
                                passingOpretor("-");
                              },
                              icon: FaIcon(FontAwesomeIcons.minus),
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.yellow.withOpacity(0.5),
                    height: bodyHeight * 0.12,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            forPassingValue("1");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,

                            // color: Colors.deepPurple.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("2");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.pink.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("3");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.orange.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: bodyHeight * 0.12,
                            // color: Colors.blueGrey.withOpacity(0.5),
                            width: totalWidth * 0.25,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  passingOpretor("+");
                                });
                              },
                              icon: FaIcon(FontAwesomeIcons.plus),
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.pink.withOpacity(0.5),
                    height: bodyHeight * 0.12,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            forPassingValue("0");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                            height: bodyHeight * 0.12,
                            // color: Colors.deepPurple.withOpacity(0.5),
                            width: totalWidth * 0.25,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue("00");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "00",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                            height: bodyHeight * 0.12,
                            // color: Colors.pink.withOpacity(0.5),
                            width: totalWidth * 0.25,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            forPassingValue(".");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              ".",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                            height: bodyHeight * 0.12,
                            // color: Colors.orange.withOpacity(0.5),
                            width: totalWidth * 0.25,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: bodyHeight * 0.12,
                          // color: Colors.blueGrey.withOpacity(0.5),
                          width: totalWidth * 0.25,
                          child: IconButton(
                            onPressed: () {
                              answer();
                            },
                            icon: FaIcon(FontAwesomeIcons.equals),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void forPassingValue(String passedvalue) {
    setState(() {
      showvalue = showvalue + passedvalue;
    });
  }

  void passingOpretor(String passedopretor) {
    setState(() {
      fristValue = showvalue;
      showvalue = "";
      if (passedopretor == "+") {
        cnt = 1;
      } else if (passedopretor == "-") {
        cnt = 2;
      } else if (passedopretor == "*") {
        cnt = 3;
      } else if (passedopretor == "/") {
        cnt = 4;
      } else if (passedopretor == "%") {
        cnt = 5;
      }
    });
  }

  void answer() {
    setState(() {
      secondValue = showvalue;
      showvalue = "";
      if (cnt == 1) {
        showvalue = "${int.parse(fristValue) + int.parse(secondValue)}";
      } else if (cnt == 2) {
        showvalue = "${int.parse(fristValue) - int.parse(secondValue)}";
      } else if (cnt == 3) {
        showvalue = "${int.parse(fristValue) * int.parse(secondValue)}";
      } else if (cnt == 4) {
        showvalue = "${int.parse(fristValue) / int.parse(secondValue)}";
      } else if (cnt == 5) {
        showvalue = "${int.parse(fristValue) * int.parse(secondValue) / 100}";
      }
    });
  }
}
