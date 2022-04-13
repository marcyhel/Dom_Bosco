import 'package:bosco/screens/appbar/appbarcuston.dart';
import 'package:bosco/screens/painel/painel.dart';
import 'package:bosco/widgets/cards_amostra.dart';
import 'package:bosco/widgets/painel_login.dart';
import 'package:bosco/widgets/painel_text.dart';
import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarCustom(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ReturnResponse(
                            g: MediaQuery.of(context).size.width / 10,
                            m: MediaQuery.of(context).size.width / 20,
                            p: MediaQuery.of(context).size.width / 50)
                        .retorno(context)),
                child: Column(
                  children: const [
                    Painel(),
                    Text("d"),
                    Painel_login(),
                    Mostrar_Cards(),
                    SizedBox(
                      height: 300,
                    ),
                    Painel_Text(),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
