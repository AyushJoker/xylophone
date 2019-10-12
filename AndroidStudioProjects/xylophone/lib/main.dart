import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              mainButton(color: Colors.red,audio: 1),
              mainButton(color: Colors.green,audio: 2),
              mainButton(color: Colors.blue,audio: 3),
              mainButton(color: Colors.purple,audio: 4),
              mainButton(color: Colors.brown,audio: 5),
              mainButton(color: Colors.orange,audio: 6),
              mainButton(color: Colors.pinkAccent.shade200,audio: 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainButton({Color color,String text,int audio}) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
           {
              player.play('note$audio.wav');
            }
          },
          child: Text(
            'click me',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
