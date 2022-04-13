import 'package:flutter/material.dart';

import 'package:bosco/widgets/input_custon.dart';

class Card_Quest extends StatelessWidget {
  String label;
  Function func;
  Card_Quest({
    Key? key,
    required this.label,
    required this.func,
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
          CustonTextField(
            valor: "",
            func: func,
            erro: false,
          ),
        ],
      ),
    );
  }
}
