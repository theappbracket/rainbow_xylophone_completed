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
              buildExpanded(color: Colors.red, soundNum: 1),
              buildExpanded(color: Colors.orange, soundNum: 2),
              buildExpanded(color: Colors.yellow, soundNum: 3),
              buildExpanded(color: Colors.green, soundNum: 4),
              buildExpanded(color: Colors.teal, soundNum: 5),
              buildExpanded(color: Colors.blue, soundNum: 6),
              buildExpanded(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded({Color color, int soundNum}) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache(prefix: 'sounds/');
          player.play('note$soundNum.wav');
        },
        child: Text(""),
      ),
    );
  }
}
