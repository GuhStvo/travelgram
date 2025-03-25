import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:travelgram/screen/home.dart';
import 'package:travelgram/screen/my_profile.dart';
import 'package:travelgram/screen/newPagesScreen.dart';
import 'package:travelgram/screen/people.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indiceAtual = 0; // Variável para controlar o índice das telas
  final List<Widget> _telas = [
    NewPagesScreen(Home()),
    NewPagesScreen(People()),
    NewPagesScreen(MyProfile()),
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelgram',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        /* App bar */
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          title: Row(
            children: <Widget>[
              Icon(
                PhosphorIcons.globeHemisphereWest(PhosphorIconsStyle.regular),
                size: 40,
                color: Color(0xFFEF5F4C),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Travelgram',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEF5F4C),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.regular),
                  size: 32,
                  color: Color(0xFF6C6C6C),
                )),
            IconButton(
                onPressed: () => {},
                icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/imgs/profilePic.png'),
                ))
          ],
        ),
        /* Body */
        body: _telas[_indiceAtual],
        /* Botões de navegação inferior */
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.house(PhosphorIconsStyle.regular),
                size: 24,
                color: Color(0xFFEF5F4C),
              ),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.users(PhosphorIconsStyle.regular),
                size: 24,
                color: Color(0xFFEF5F4C),
              ),
              label: 'Pessoas',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.user(PhosphorIconsStyle.regular),
                  size: 24,
                  color: Color(0xFFEF5F4C),
                ),
                label: 'Meu perfil')
          ],
        ),
      ),
    );
  }
}
