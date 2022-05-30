import 'package:flutter/material.dart';

/** 2022-05-30 22:50 jongdroid
 *  flutter state management를 학습하는 project
 *  이 클래스는 setState를 학습하는 코드입니다.
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('좋아요'),
              IconButton(
                icon: isPressed ? Icon(Icons.star) : Icon(Icons.star_border),
                color: isPressed ? Colors.red : Colors.red,
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
              ),
              Text(isPressed ? '41' : '40'),
            ],
          ),
        ),
      ),
    );
  }
}
