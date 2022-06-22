import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneApp extends StatelessWidget {
  // static const String id = "welcome";

  void func1(int a){
    final player=AudioCache();
    player.play('note$a.wav');
  }

  Expanded func2(Color col ,int num){
    return Expanded(
      child: TextButton(
        onPressed: (){
          func1(num);
        },
        child: Container(
          color: col,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Center(child: Text('XYLOPHONE',style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              func2(Colors.red,1),
              func2(Colors.orange,2),
              func2(Colors.yellow,3),
              func2(Colors.teal,4),
              func2(Colors.green,5),
              func2(Colors.blue,6),
              func2(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
