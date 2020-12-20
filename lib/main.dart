import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
    player.clear('note$soundNumber.wav');
  }

  Expanded soundBar(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: [
              soundBar(Colors.red, 1),
              soundBar(Colors.pink, 2),
              soundBar(Colors.purple, 3),
              soundBar(Colors.indigo, 4),
              soundBar(Colors.blue, 5),
              soundBar(Colors.cyan, 6),
              soundBar(Colors.teal, 7),
            ],
          ),
        ),
      ),
    );
  }
}
