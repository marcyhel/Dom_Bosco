import 'package:flutter/material.dart';

import '../../widgets/responsive.dart';
import '../questionario/questionario.dart';
import 'buton.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black26,
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 50),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ("assets/logo.png"),
          ),
          Row(
            children: ResponsiveWidget.isSmallScreen(context)
                ? [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: FlatButton(
                        color: Color(0xff3861FA),
                        hoverColor: Color(0xff3861aa),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext contex) {
                                return Questionario();
                              });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 5),
                          child: const Text(
                            "Agende uma Visita",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ]
                : [
                    Button_app(texto: 'Localização'),
                    Button_app(texto: 'Benefícios'),
                    Button_app(texto: 'Apartamentos'),
                    Button_app(texto: 'Programa colega de quarto'),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: FlatButton(
                        color: Color(0xff3861FA),
                        hoverColor: Color(0xff3861aa),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext contex) {
                                return Questionario();
                              });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 5),
                          child: const Text(
                            "Agende uma Visita",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
          ),
        ],
      ),
    );
  }
}
