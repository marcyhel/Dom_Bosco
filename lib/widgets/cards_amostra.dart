import 'package:bosco/widgets/teste_card_amostra.dart';
import 'package:flutter/material.dart';

import 'package:bosco/widgets/responsive.dart';

class Mostrar_Cards extends StatelessWidget {
  const Mostrar_Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(
                bottom: ReturnResponse(g: 50, m: 100, p: 60).retorno(context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card_Amostra(
                    cor: Color(0xffF7E0D4),
                    img: 'assets/19.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok\nasd\nsad\nsdsf\nksdjfkldjf\nkdfj",
                  ),
                  Card_Amostra(
                    cor: Color(0xffD7ECFA),
                    img: 'assets/18.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok",
                  ),
                  Card_Amostra(
                    cor: Color(0xffCAE8E2),
                    img: 'assets/17.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok",
                  ),
                  Card_Amostra(
                    cor: Color(0xffCAE8E2),
                    img: 'assets/20.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok",
                  ),
                  Card_Amostra(
                    cor: Color(0xffCAE8E2),
                    img: 'assets/22.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok",
                  ),
                  Card_Amostra(
                    cor: Color(0xffCAE8E2),
                    img: 'assets/21.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok",
                  ),
                  Card_Amostra(
                    cor: Color(0xffCAE8E2),
                    img: 'assets/25.jpeg',
                    titulo: "Beneficio Internet inclusa",
                    texto: "okok",
                  )
                ],
              ),
            ),
          ))
        : Teste_Mostrar_Cards();
  }
}

class Card_Amostra extends StatelessWidget {
  String img;
  Color cor;
  String titulo;
  String texto;
  Card_Amostra({
    Key? key,
    required this.img,
    required this.cor,
    required this.titulo,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //overflow: Overflow.visible,
      children: [
        Container(
          height: 300,
          width: 350,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        /*Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.all(20),
            color: cor, //Color(0xffF5E1D3),
            width: 250,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 2,
                    width: 100,
                    color: Colors.black54),
                Text(
                  titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 2,
                    width: 100,
                    color: Colors.black54),
                Text(
                  texto,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                ),
              ],
            ),
          ),
        ),*/
      ],
    );
  }
}
