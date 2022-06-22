import 'package:flutter/material.dart';
import 'xylophone.dart';

void main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.cyanAccent,
            title: Center(
              child: Text(
                'ELC ASSIGNMENT',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/tiet.jpg'),
                  height: 160,
                ),

                SizedBox(
                  height: 20,
                ),

                Center(
                    child: Text(
                  'This application has been made by: ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 20,
                ),
                Text('ARTH (101903534)'),
                SizedBox(
                  height: 10,
                ),
                Text('MAHIRA (101903536)'),
                SizedBox(
                  height: 10,
                ),
                Text('MANYA (101903531)'),
                SizedBox(
                  height: 10,
                ),
                Text('ANANYA (101903803)'),
                SizedBox(
                  height: 10,
                ),
                Text('BHAVIKA (10190358)'),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => XylophoneApp()),
                      );
                    },
                    child: Text('Click Me'))
              ],
            ),
          ),
        );
      }),
    );
  }
}
