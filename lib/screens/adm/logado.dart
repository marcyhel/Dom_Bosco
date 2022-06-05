import 'package:bosco/screens/adm/larg_logado.dart';
import 'package:bosco/screens/adm/small_logado.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../mobx/banco/mob_banco.dart';
import '../../widgets/responsive.dart';

class Logado extends StatelessWidget {
  Logado({Key? key}) : super(key: key);
  final Mob_Banco mob = GetIt.I<Mob_Banco>();
  @override
  Widget build(BuildContext context) {
    return mob.logado
        ? ResponsiveWidget.isSmallScreen(context)
            ? Small_logado()
            : Larg_logado()
        : Scaffold(
            body: Container(
              child: Center(child: Text("Apenas administradores tem acesso")),
            ),
          );
  }
}
