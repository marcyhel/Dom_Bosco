import 'package:flutter/material.dart';
import 'package:smart_dropdown/smart_dropdown.dart';

import 'package:bosco/widgets/responsive.dart';

class Card_cuaton_Drop extends StatelessWidget {
  String label;
  String valor;
  bool erro;
  List<dynamic> UF;

  Card_cuaton_Drop({
    Key? key,
    required this.label,
    required this.valor,
    required this.erro,
    required this.UF,
  }) : super(key: key);
  //final Mob_Dados mob = GetIt.I<Mob_Dados>();
  List<SmartDropdownMenuItem> items = [];

  SmartDropdownMenuItem getItem(dynamic value, String item) {
    return SmartDropdownMenuItem(
      value: value,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    items = [];
    var cont = 0;
    UF.forEach((e) {
      cont++;
      items.add(
        getItem(cont, e),
      );
    });
    return Container(
      //width: MediaQuery.of(context).size.width / 3.13,
      //margin: ResponsiveWidget.isSmallScreen(context)
      //    ? const EdgeInsets.only(left: 0, bottom: 20)
      //    : const EdgeInsets.only(left: 40, bottom: 20),
      //padding: const EdgeInsets.all(10),
      //decoration: BoxDecoration(
      //  color: Colors.white,
      //  borderRadius: BorderRadius.circular(10),
      //  boxShadow: const [
      //    BoxShadow(blurRadius: 5, color: Colors.black26, offset: Offset(1, 2))
      //   ],
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 20, left: 8, right: 8),
            child: SmartDropDown(
              items: items,
              hintText: "-dD", // mob.estado == "" ? " UF " : mob.estado,
              borderRadius: 10,
              maxListHeight: 150,
              borderColor: const Color(0xff1E123A),
              expandedColor: const Color(0xff1E123A),
              onChanged: (e) {
                //mob.setEstado(UF[e - 1]);
                print(e);
              },
            ),
          ),
        ],
      ),
    );
  }
}
