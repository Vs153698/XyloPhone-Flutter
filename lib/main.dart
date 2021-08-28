import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({color, soundnumber}) {
    //return type is Expanded(widget)
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playsound(soundnumber);
        },
        child: Text(""),
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
              buildkey(color: Colors.teal, soundnumber: 1),
              buildkey(color: Colors.deepOrange, soundnumber: 2),
              buildkey(color: Colors.blueAccent, soundnumber: 3),
              buildkey(color: Colors.red, soundnumber: 4),
              buildkey(color: Colors.green, soundnumber: 5),
              buildkey(color: Colors.yellow, soundnumber: 6),
              buildkey(color: Colors.deepPurple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
