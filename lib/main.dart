import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player=AudioCache();
    player.play('note$soundNumber.wav');
  }
  Widget expandedButton(int noteNumber,Color color){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(noteNumber);
        },
        color: color,
        //Remove the default padding from Flat Button
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expandedButton(1,Colors.red),
              expandedButton(2,Colors.orange),
              expandedButton(3,Colors.yellow),
              expandedButton(4,Colors.green),
              expandedButton(5,Colors.blue),
              expandedButton(6,Colors.indigo),
              expandedButton(7,Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
