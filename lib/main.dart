import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playTile(int soundNumber, {required MaterialColor color}) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(''),
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                playTile(1, color: Colors.red),
                playTile(2, color: Colors.orange),
                playTile(3, color: Colors.yellow),
                playTile(4, color: Colors.green),
                playTile(5, color: Colors.teal),
                playTile(6, color: Colors.blue),
                playTile(7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
