import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 32,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                
              ],
            ),
          )
        ],
      ),
    );
  }
}