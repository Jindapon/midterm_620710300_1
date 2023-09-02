// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '620710300';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 150.0,
      height: 300.0,
      child: Stack(
        children: [
          Positioned(
            top: 10.0,
            left: 150.0,
            right: 50.0,
            child: Text(
              'Question 1 of 4',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'What is the capital of France?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  _buildOption('Paris'),
                  _buildOption('Berlin'),
                  _buildOption('Madrid'),
                  _buildOption('Rome'),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildOption(String optionText) {
    IconData iconData;
    Color iconColor;

    var selectedAnswer;
    var correctAnswer;

    if (optionText == selectedAnswer) {
      iconData = Icons.check_circle;
      iconColor = correctAnswer == selectedAnswer ? Colors.green : Colors.red;
    } else if (optionText == correctAnswer) {
      iconData = Icons.check_circle_outline;
      iconColor = Colors.green;
    } else {
      iconData = Icons.radio_button_unchecked;
      iconColor = Colors.black;
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 14.0,
            color: iconColor,
          ),
          SizedBox(width: 8.0),
          Text(
            optionText,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  _buildButtonPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
          },
          child: Text('Back'),
        ),
        ElevatedButton(
          onPressed: () {
          },
          child: Text('Naxt'),
        ),
      ],
    );
  }
  stack({required List children}) {}
}
