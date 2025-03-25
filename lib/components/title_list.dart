import 'package:flutter/material.dart';
import 'package:travelgram/components/text/headline.dart';
import 'package:travelgram/components/text/paragraph.dart';
import 'package:travelgram/components/text/title_h2.dart';

class TitleList extends StatelessWidget {
  const TitleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline(text: 'Para os amantes de história'),
        SizedBox(height: 8),
        H2(text: 'Descubra 3 destinos imperdíveis em Busan'),
        SizedBox(
          height: 15,
        ),
        Paragraph(
            text:
                'As atrações de Busan vão desde templos budistas centenários que pontilham as montanhas e o litoral da cidade até praias imaculadas com águas cristalinas. Esta cidade litorânea tem muitas coisas para fazer o ano todo - as famílias podem passar o tempo em um aquário à beira-mar, os compradores podem explorar bairros vibrantes e os amantes da natureza podem desfrutar de longas caminhadas até mirantes panorâmicos. Os santuários budistas que pontilham a costa e as montanhas de Busan têm uma arquitetura impressionante que irá encantar os fotógrafos.'),
      ],
    );
  }
}
