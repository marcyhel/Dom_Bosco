import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../mobx/banco/mob_banco.dart';
import '../../../widgets/responsive.dart';

class Modal_info extends StatelessWidget {
  int index;
  Modal_info({
    Key? key,
    required this.index,
  }) : super(key: key);
  final Mob_Banco mob = GetIt.I<Mob_Banco>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        elevation: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(mob.lista_user[index]['nome'] +
                ' ' +
                mob.lista_user[index]['sobrenome']),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
          ],
        ),
        actions: [],
        content: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            //padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Linha(nome: "E-mail:", valor: mob.lista_user[index]['email']),
                Linha(
                    nome: "Número (cel):",
                    valor: mob.lista_user[index]['numero']),
                Linha(
                    nome: "Estudante:",
                    valor: mob.lista_user[index]['estudante']),
                Linha(nome: "Idade:", valor: mob.lista_user[index]['idade']),
                Linha(
                    nome: "Profissão:",
                    valor: mob.lista_user[index]['profissao']),
              ],
            ),
          ),
        ));
  }
}

class item extends StatelessWidget {
  String label;
  String texto;
  item({
    Key? key,
    required this.label,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          SizedBox(
            width: 10,
          ),
          Text(texto)
        ],
      ),
    );
  }
}

class Linha extends StatelessWidget {
  String nome;
  String valor;
  double larg = 250;
  bool destacado = false;

  Linha({
    Key? key,
    required this.nome,
    required this.valor,
    //this.larg = MediaQuery.of(context).size.width,
    this.destacado = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ReturnResponse(
        g: MediaQuery.of(context).size.width / 3,
        m: MediaQuery.of(context).size.width / 2,
        p: MediaQuery.of(context).size.width / 1.01,
      ).retorno(context),
      margin: EdgeInsets.all(3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nome,
            style: TextStyle(
              color: (destacado) ? Colors.black.withAlpha(190) : Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Divider(
              indent: 7,
              endIndent: 7,
              thickness: 1,
            ),
          ),
          Text(
            valor,
            style: TextStyle(
              color: (destacado)
                  ? Colors.black.withAlpha(230)
                  : Colors.black.withAlpha(170),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
