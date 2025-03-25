import 'package:flutter/material.dart';
import 'package:travelgram/components/list.dart';
import 'package:travelgram/components/title_page.dart';
import 'package:travelgram/components/title_list.dart';

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
              spacing: 32,
              children: [
                TitlePage(),
                TitleList(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    spacing: 35,
                    children: <Widget>[ListComp()],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
