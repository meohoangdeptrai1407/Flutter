import 'package:flutter/material.dart';

void main() {
  runApp(Background());
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Center(child: Text('My third project'))),
          body: BodyPart(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MyButton extends StatelessWidget {
  late String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: Text(text, textAlign: TextAlign.center),
    );
  }
}

class VoidExpand extends StatelessWidget {
  late int flex;

  VoidExpand(this.flex);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(color: Color.fromARGB(0, 0, 0, 0)),
    );
  }
}

class BodyPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          VoidExpand(4),
          Expanded(
            flex: 8,
            child: Container(
              child: Row(
                children: [
                  VoidExpand(2),
                  Expanded(
                    flex: 6,
                    child: Container(
                      color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton('New game'),
                          MyButton('Load game'),
                          MyButton('Option'),
                          MyButton('Credit'),
                          MyButton('Quit'),
                        ],
                      ),
                    ),
                  ),
                  VoidExpand(2),
                ],
              ),
            ),
          ),
          VoidExpand(4),
        ],
      ),
    );
  }
}

class MyApp extends State<MyState> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
