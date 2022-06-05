import 'package:bosco/screens/appbar/appbarcuston.dart';
import 'package:bosco/screens/beneficios/benefios.dart';
import 'package:bosco/screens/painel/painel.dart';
import 'package:bosco/widgets/cards_amostra.dart';
import 'package:bosco/widgets/drawer.dart';
import 'package:bosco/widgets/map.dart';
import 'package:bosco/widgets/painel_login.dart';
import 'package:bosco/widgets/painel_text.dart';
import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/teste_card_amostra.dart';

class Principal extends StatelessWidget {
  Principal({Key? key}) : super(key: key);
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveWidget.isSmallScreen(context) ? Drawer_custon() : null,
      body: Container(
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              AppBarCustom(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ReturnResponse(
                            g: MediaQuery.of(context).size.width / 10,
                            m: MediaQuery.of(context).size.width / 20,
                            p: 0)
                        .retorno(context)),
                child: Column(
                  children: [
                    const Painel(),
                    SizedBox(
                      height: ReturnResponse(g: 160, m: 120, p: 80)
                          .retorno(context),
                    ),
                    const Painel_Text(),
                    Beneficios(),
                    const Painel_login(),
                    // Teste_Mostrar_Cards(),
                    const Mostrar_Cards(),

                    Maps(),
                    SizedBox(
                      height: ReturnResponse(g: 160, m: 120, p: 80)
                          .retorno(context),
                    ),
                  ],
                ),
              ),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
