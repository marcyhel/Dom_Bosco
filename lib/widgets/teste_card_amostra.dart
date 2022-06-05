import 'package:flutter/material.dart';

import 'package:bosco/widgets/responsive.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Teste_Mostrar_Cards extends StatefulWidget {
  Teste_Mostrar_Cards({Key? key}) : super(key: key);

  @override
  State<Teste_Mostrar_Cards> createState() => _Teste_Mostrar_CardsState();
}

class _Teste_Mostrar_CardsState extends State<Teste_Mostrar_Cards> {
  CarouselController buttonCarouselController = CarouselController();
  List lista = [
    {
      'cor': Color(0xffD7ECFA),
      'img': 'assets/19.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok",
    },
    {
      'cor': Color(0xffCAE8E2),
      'img': 'assets/18.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok",
    },
    {
      'cor': Color(0xffF7E0D4),
      'img': 'assets/17.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok\nasd\nsad\nsdsf\nksdjfkldjf\nkdfj",
    },
    {
      'cor': Color(0xffCAE8E2),
      'img': 'assets/20.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok",
    },
    {
      'cor': Color(0xffCAE8E2),
      'img': 'assets/22.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok",
    },
    {
      'cor': Color(0xffCAE8E2),
      'img': 'assets/21.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok",
    },
    {
      'cor': Color(0xffCAE8E2),
      'img': 'assets/25.jpeg',
      'titulo': "Beneficio Internet inclusa",
      'texto': "okok",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        FlutterCarousel(
          items: lista.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Teste_Card_Amostra(
                  cor: i['cor'],
                  img: i['img'],
                  titulo: i['titulo'],
                  texto: i['texto'],
                );
              },
            );
          }).toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.5,
            aspectRatio: 2.7,
            initialPage: 0,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(
              onPressed: () => buttonCarouselController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn),
              child: Icon(Icons.arrow_back),
            ),
            RaisedButton(
              onPressed: () => buttonCarouselController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn),
              child: Icon(Icons.arrow_forward),
            )
          ],
        )
      ],
    )
        /*
        child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.only(
          bottom: ReturnResponse(g: 50, m: 100, p: 170).retorno(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Teste_Card_Amostra(
              cor: Color(0xffF7E0D4),
              img: 'assets/1.jpeg',
              titulo: "Beneficio Internet inclusa",
              texto: "okok\nasd\nsad\nsdsf\nksdjfkldjf\nkdfj",
            ),
            Teste_Card_Amostra(
              cor: Color(0xffD7ECFA),
              img: 'assets/2.jpeg',
              titulo: "Beneficio Internet inclusa",
              texto: "okok",
            ),
            Teste_Card_Amostra(
              cor: Color(0xffCAE8E2),
              img: 'assets/3.jpeg',
              titulo: "Beneficio Internet inclusa",
              texto: "okok",
            ),
          ],
        ),
      ),
    ),*/
        );
  }
}

class Teste_Card_Amostra extends StatelessWidget {
  String img;
  Color cor;
  String titulo;
  String texto;
  Teste_Card_Amostra({
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
          height: 350,
          //width: 450,
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
