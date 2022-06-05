import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Small_Painel extends StatelessWidget {
  const Small_Painel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.bottomStart,
      //overflow: Overflow.visible,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 2),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/23.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/10.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/aerea.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        /* Positioned(
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),*/
      ],
    );
  }
}
