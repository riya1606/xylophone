import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color,int num}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(num);
        },
        color: color,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child:  Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color:Colors.red,num:1),
            buildKey(color:Colors.orange,num:2),
            buildKey(color:Colors.yellow,num:3),
            buildKey(color:Colors.green,num:4),
            buildKey(color:Colors.teal,num:5),
            buildKey(color:Colors.cyan,num:6),
            buildKey(color:Colors.purple,num:7),
          ],
        ),
        ),
      ),

    );
  }
}
