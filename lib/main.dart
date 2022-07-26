import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontsize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fontsize),
                maxLines: null,
              ),
            ),
            Slider(
              value: _fontsize,
              onChanged: (newSize) {
                setState(() {
                  _fontsize = newSize;
                });
              },
              min: 30,
              max: 250,
            )
          ],
        ),
      )),
    );
  }
}
