import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/responsive.dart';

class Card_Beneficio extends StatelessWidget {
  String titulo;
  String texto;
  Icon icon;
  Card_Beneficio({
    Key? key,
    required this.titulo,
    required this.texto,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ReturnResponse(
                g: MediaQuery.of(context).size.width / 3,
                m: MediaQuery.of(context).size.width / 2.5,
                p: MediaQuery.of(context).size.width / 2.2)
            .retorno(context),
        height: ReturnResponse(g: 120, m: 160, p: 280).retorno(context),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color(0xff3861FA),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  offset: Offset(1, 1), blurRadius: 5, color: Colors.black26)
            ]),
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      titulo,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: ReturnResponse(
                            g: MediaQuery.of(context).size.width / 4,
                            m: MediaQuery.of(context).size.width / 5,
                            p: MediaQuery.of(context).size.width / 4.2)
                        .retorno(context),
                    child: Text(
                      texto,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
