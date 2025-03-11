import 'package:flutter/material.dart';

import 'helper_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var userInput = "";
var answer = "";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Calculator App",
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                children: [
                  Text(
                    userInput.toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    answer.toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        tittle: "AC",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput = "";
                          answer = "";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "+/-",
                        colorCircle: Colors.grey,
                        onPress: () {},
                      ),
                      MyButton(
                        tittle: "%",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "%";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "/",
                        colorCircle: Colors.orange,
                        onPress: () {
                          userInput += "/";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        tittle: "7",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "7";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "8",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "8";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "9",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "9";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "X",
                        colorCircle: Colors.orange,
                        onPress: () {
                          userInput += "*";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        tittle: "4",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "4";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "5",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "5";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "6",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "6";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "-",
                        colorCircle: Colors.orange,
                        onPress: () {
                          userInput += "-";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        tittle: "1",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "1";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "2",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "2";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "3",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "3";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "+",
                        colorCircle: Colors.orange,
                        onPress: () {
                          userInput += "+";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        tittle: "0",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += "0";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: ".",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput += ".";
                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "Del",
                        colorCircle: Colors.grey,
                        onPress: () {
                          userInput = "";

                          setState(() {});
                        },
                      ),
                      MyButton(
                        tittle: "=",
                        colorCircle: Colors.orange,
                        onPress: () {
                          userInput += "=";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
