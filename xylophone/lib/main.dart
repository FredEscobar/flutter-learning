import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$soundNumber.wav'));
}

Widget buildKey(int soundNumber, Color backgroundColor) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor, shape: BeveledRectangleBorder()),
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.teal),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
