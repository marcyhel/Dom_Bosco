// ignore_for_file: prefer_const_constructors

import 'package:bosco/mobx/banco/mob_banco.dart';
import 'package:bosco/screens/questionario/widget/card_drop.dart';
import 'package:bosco/screens/questionario/widget/card_quest.dart';
import 'package:bosco/widgets/input_custon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../widgets/responsive.dart';

class Questionario extends StatelessWidget {
  final Mob_Banco mob = GetIt.I<Mob_Banco>();
  Questionario({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 10,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Formulario"),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.all(20),
          child: FlatButton(
              color: Color(0xffF2C6B6),
              hoverColor: Color(0xffffb6a6),
              onPressed: () {
                mob.printar();

                if (mob.preenchido()) {
                  mob.enviar();
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Color(0xff23872B),
                      duration: Duration(seconds: 2),
                      content: Text('Sucesso !! '),
                    ),
                  );
                }
              },
              child: Text(
                "Enviar",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 20),
              )),
        )
      ],
      content: Observer(builder: (_) {
        return SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        children: [
                          Card_Quest(
                            erro: mob.Boolnome,
                            label: "Nome",
                            func: (e) {
                              mob.setNome(e);
                            },
                          ),
                          Card_Quest(
                            erro: mob.Boolsobrenome,
                            label: "Sobrenome",
                            func: (e) {
                              mob.setSobrenome(e);
                            },
                          ),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: ReturnResponse(
                              g: MediaQuery.of(context).size.width / 4,
                              m: MediaQuery.of(context).size.width / 4,
                              p: MediaQuery.of(context).size.width / 3.5,
                            ).retorno(context),
                            child: Card_Quest(
                              erro: mob.Boolnome,
                              label: "Nome",
                              func: (e) {
                                mob.setNome(e);
                              },
                            ),
                          ),
                          Container(
                            width: ReturnResponse(
                              g: MediaQuery.of(context).size.width / 4,
                              m: MediaQuery.of(context).size.width / 4,
                              p: MediaQuery.of(context).size.width / 3.5,
                            ).retorno(context),
                            child: Card_Quest(
                              erro: mob.Boolsobrenome,
                              label: "Sobrenome",
                              func: (e) {
                                mob.setSobrenome(e);
                              },
                            ),
                          ),
                        ],
                      ),
                Card_Quest(
                  erro: mob.Boolnum,
                  label: "Numero (cel) com DDD",
                  func: (e) {
                    mob.setNum(e);
                  },
                ),
                Card_Quest(
                  erro: mob.Boolemail,
                  label: "E-mail",
                  func: (e) {
                    mob.setEmail(e);
                  },
                ),
                /*Card_Quest(
                label: "CPF",
                func:  (e) {mob.setCpf(e);},
              ),*/
                Row(
                  children: [
                    Expanded(
                        child: Card_Drop(
                      erro: mob.Boolestudante,
                      list: const ["Sim", "Não"],
                      label: "Estudante",
                      func: (e) {
                        mob.setEstudante(e);
                      },
                    )),
                    Expanded(
                        child: Card_Drop(
                      erro: mob.Boolidade,
                      list: const [
                        "- 18",
                        "18 - 25",
                        "26 - 45",
                        "46 - 60",
                        "61 - 80",
                        "80+"
                      ],
                      label: "Idade",
                      func: (e) {
                        mob.setIdade(e);
                      },
                    )),
                    //Card_Drop(),
                  ],
                ),
                Card_Quest(
                  erro: mob.Boolproficao,
                  label: "Profição",
                  func: (e) {
                    mob.setProficao(e);
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
