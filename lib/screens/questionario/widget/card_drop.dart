import 'package:flutter/material.dart';

import 'package:bosco/widgets/card_custon_drop.dart';
import 'package:bosco/widgets/input_custon.dart';

class Card_Drop extends StatelessWidget {
  String label;
  Function func;
  List<dynamic> list;
  Card_Drop({
    Key? key,
    required this.label,
    required this.func,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(label),
          ),
          Card_cuaton_Drop(UF: list, label: label, valor: "valor", erro: false)
        ],
      ),
    );
  }
}
