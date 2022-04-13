import 'package:bosco/screens/questionario/questionario.dart';
import 'package:flutter/material.dart';

class Painel_login extends StatelessWidget {
  const Painel_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 100),
      color: Color(0xffD5F2EA),
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          const Text(
            "Se inscreva",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 40),
          ),
          Container(
            color: Colors.black87,
            height: 3,
            width: 100,
            margin: EdgeInsets.only(top: 40, bottom: 30),
          ),
          const Text(
            "Não perca essa oportunidade de morar no melhor condominio de Rio Verde",
            style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 20),
          ),
          SizedBox(
            height: 40,
          ),
          FlatButton(
            color: Color(0xffF2C6B6),
            hoverColor: Color(0xffffb6a6),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext contex) {
                    return Questionario();
                  });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Garanta já sua vaga",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
