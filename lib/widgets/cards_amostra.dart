import 'package:flutter/material.dart';

class Mostrar_Cards extends StatelessWidget {
  const Mostrar_Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card_Amostra(
            cor: Color(0xffF7E0D4),
            img: 'assets/1.jpeg',
          ),
          Card_Amostra(
            cor: Color(0xffD7ECFA),
            img: 'assets/2.jpeg',
          ),
          Card_Amostra(
            cor: Color(0xffCAE8E2),
            img: 'assets/3.jpeg',
          ),
        ],
      ),
    );
  }
}

class Card_Amostra extends StatelessWidget {
  String img;
  Color cor;
  Card_Amostra({
    Key? key,
    required this.img,
    required this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -150,
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
                  "Demo",
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
                const Text(
                  "The first thing to say about our private group tours of Ireland is that each one is different and every itinerary is tailored",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
