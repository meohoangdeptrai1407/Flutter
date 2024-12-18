import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('My second app'),
            ),
          ),
          body: MyApp(),
        )
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}

class InitState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is a new app'),
    );
  }

}

class MyState extends State<MyApp>
{
  int initNumber = 0;
  @override
  void initState() {
    // TODO: implement initState
  }
  @override
  Widget build(BuildContext context) {
    return InitState();
  }

}