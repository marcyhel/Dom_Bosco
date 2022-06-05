import 'package:bosco/screens/painel/larg_painel.dart';
import 'package:bosco/screens/painel/small_painel.dart';
import 'package:flutter/material.dart';

import '../../widgets/responsive.dart';

class Painel extends StatelessWidget {
  const Painel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? const Small_Painel()
        : Larg_Painel();
  }
}
