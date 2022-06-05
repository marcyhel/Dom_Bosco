import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Painel_Text extends StatelessWidget {
  const Painel_Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: ReturnResponse(g: 100, m: 50, p: 0).retorno(context),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ReturnResponse(g: 50, m: 30, p: 20).retorno(context),
            ),
            height: 350,
            width: ReturnResponse(g: 40, m: 20, p: 10).retorno(context),
            color: Color(0xff69F071),
          ),
          Container(
            width: ReturnResponse(
              g: MediaQuery.of(context).size.width / 2,
              m: MediaQuery.of(context).size.width / 1.7,
              p: MediaQuery.of(context).size.width / 1.3,
            ).retorno(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Visão, Missão e Valores",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 2,
                    width: 100,
                    color: Colors.black54),
                const Text(
                  "A nossa missão é ser um time obstinado em prever e atender as necessidades dos clientes, com qualidade e segurança sempre agregando valores.\n\nSer líder e inspirar, melhor em conjuntos de prédios imobiliários somente para locação em Rio Verde.\n\nTemos como valores a honestidade, respeito, confiança e conforto.",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
