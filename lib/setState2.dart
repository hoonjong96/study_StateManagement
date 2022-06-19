import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('setState_demo2'),
        centerTitle: true,),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: (){
                  setState(() {
                    num++;
                    print('num: $num');
                  });
                },
              ),
              Text('$num'),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: (){
                  setState(() {
                    num--;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
