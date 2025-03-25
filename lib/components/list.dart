import 'package:flutter/material.dart';
import 'package:travelgram/components/imagem.dart';
import 'package:travelgram/components/list_content.dart';
import 'package:travelgram/components/text/paragraph.dart';
import 'package:travelgram/components/text/title_h3.dart';

class ListComp extends StatelessWidget {
  const ListComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Imagem(url: 'assets/imgs/oriente.png'),
        SizedBox(
          height: 20,
        ),
        H3(text: '1. Templo Haedong Yonggungsa '),
        SizedBox(height: 8),
        Paragraph(
            text:
                'O Templo Haedong Yonggungsa é um templo budista localizado no extremo nordeste de Busan. Construído em 1376, é um dos poucos templos na Coreia construídos à beira-mar – você pode desfrutar de vistas do Mar do Leste de um lado e de belas montanhas do outro. '),
        SizedBox(height: 25),
        ListContent(text: 'História')
      ],
    );
  }
}
