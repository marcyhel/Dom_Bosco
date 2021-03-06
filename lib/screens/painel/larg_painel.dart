import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Larg_Painel extends StatelessWidget {
  const Larg_Painel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.bottomStart,
      // overflow: Overflow.visible,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.1,
        ),
        Container(
          margin: const EdgeInsets.only(top: 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: ReturnResponse(g: 500, m: 450, p: 300).retorno(context),
                width: ReturnResponse(g: 400, m: 350, p: 200).retorno(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/aerea.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: ReturnResponse(g: 300, m: 230, p: 150).retorno(context),
                width: ReturnResponse(g: 600, m: 230, p: 150).retorno(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/14.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              /* Container(
                height: ReturnResponse(g: 300, m: 230, p: 150).retorno(context),
                width: ReturnResponse(g: 300, m: 230, p: 150).retorno(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/10.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),*/
            ],
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.width / 20),
          left: (MediaQuery.of(context).size.width / 2.2),
          child: Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
