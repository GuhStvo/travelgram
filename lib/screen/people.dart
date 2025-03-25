import 'package:flutter/material.dart';
import 'package:travelgram/components/card_people.dart';
import 'package:travelgram/data/dummy_data.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: dummyPerson.map((person) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0), // Espaço entre os cards
              child: CardPeople(person: person),
            );
          }).toList(),
        ),
      ),
    );
  }
}