import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dice',
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice_changer = 1;
  int r_dice_changer = 5;

  void change_dice_face() {
    setState(() {
      r_dice_changer = Random().nextInt(6) + 1;
      dice_changer = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              change_dice_face();
            },
            child: Image(
              image: AssetImage('images/dice$dice_changer.png'),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              change_dice_face();
            },
            child: Image(
              image: AssetImage('images/dice$r_dice_changer.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
