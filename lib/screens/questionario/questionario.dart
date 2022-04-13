// ignore_for_file: prefer_const_constructors

import 'package:bosco/screens/questionario/widget/card_drop.dart';
import 'package:bosco/screens/questionario/widget/card_quest.dart';
import 'package:bosco/widgets/input_custon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Questionario extends StatelessWidget {
  Questionario({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 10,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Titulo"),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.all(20),
          child: FlatButton(
              color: Color(0xffF2C6B6),
              hoverColor: Color(0xffffb6a6),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Enviar",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 20),
              )),
        )
      ],
      content: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: [
            Card_Quest(
              label: "Nome completo",
              func: () {},
            ),
            Card_Quest(
              label: "E-mail",
              func: () {},
            ),
            Card_Quest(
              label: "CPF",
              func: () {},
            ),
            Row(
              children: [
                Expanded(
                    child: Card_Drop(
                  list: const ["sim", "não"],
                  label: "Estudante",
                  func: () {},
                )),
                Expanded(
                    child: Card_Drop(
                  list: const [
                    "- 18",
                    "18 - 25",
                    "26 - 45",
                    "46 - 60",
                    "61 - 80",
                    "80+"
                  ],
                  label: "Idade",
                  func: () {},
                )),
                //Card_Drop(),
              ],
            ),
            Card_Quest(
              label: "Profição",
              func: () {},
            ),
          ],
        ),
      ),
    );
  }
}
