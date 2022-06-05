import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/appbar/buton.dart';

class Drawer_custon extends StatelessWidget {
  const Drawer_custon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Button_app(texto: 'Localização'),
            Button_app(texto: 'Benefícios'),
            Button_app(texto: 'Apartamentos'),
            Button_app(texto: 'Programa colega de quarto'),
          ],
        ));
  }
}
