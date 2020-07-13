import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // this for loop generates the buttons for each sound wave
              for (var i in [1, 2, 3, 4, 5, 6, 7])
                RaisedButton(
                color: Colors.blue[900 - 100 * i],
                onPressed: () {
                  playSound(i);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
