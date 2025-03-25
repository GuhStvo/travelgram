import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:travelgram/models/profiles.dart';

class CardPeople extends StatelessWidget {
  final Person person;

  const CardPeople({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(person.photoUrl),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      person.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        PhosphorIcons.airplaneTilt(PhosphorIconsStyle.regular),
                        size: 20,
                        color: const Color(0xFFEF5F4C),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${person.countries} países',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              // Aqui você pode adicionar uma ação específica para cada pessoa
            },
            child: Row(
              children: [
                const Text(
                  'Ver mais',
                  style: TextStyle(
                    color: Color(0xFFEF5F4C),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 16,
                  color: const Color(0xFFEF5F4C),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}