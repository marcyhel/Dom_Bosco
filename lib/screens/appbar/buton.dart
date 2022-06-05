import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button_app extends StatefulWidget {
  String texto;
  Button_app({
    Key? key,
    required this.texto,
  }) : super(key: key);

  @override
  State<Button_app> createState() => _Button_appState();
}

class _Button_appState extends State<Button_app> {
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          color = Colors.white;
        });
      },
      onExit: (e) {
        setState(() {
          color = Colors.white;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 17, horizontal: 15),
          margin: EdgeInsets.all(2),
          color: color,
          // padding: EdgeInsets.all(5),
          child: Text(widget.texto),
        ),
      ),
    );
  }
}
