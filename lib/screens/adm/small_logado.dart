import 'package:bosco/screens/adm/widgets/itens_lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_skeleton/loader_skeleton.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

import '../../mobx/banco/mob_banco.dart';
import '../appbar/appbarcuston.dart';

class Small_logado extends StatefulWidget {
  Small_logado({Key? key}) : super(key: key);

  @override
  State<Small_logado> createState() => _Small_logadoState();
}

class _Small_logadoState extends State<Small_logado> {
  final Mob_Banco mob = GetIt.I<Mob_Banco>();
  @override
  void initState() {
    // TODO: implement initState
    mob.return_list_users();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) {
            return Column(
              children: [
                AppBarCustom(),
                mob.load_list_user
                    ? Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Column(
                          children: [
                            SkeletonLoader(
                              builder: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: double.infinity,
                                            height: 12,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              items: 5,
                              period: Duration(seconds: 1),
                              highlightColor: Colors.grey.shade400,
                              direction: SkeletonDirection.ltr,
                            ),
                          ],
                        ),
                      )
                    : Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Column(
                          children: List.generate(
                            mob.lista_user.length,
                            (index) {
                              print(
                                'dd',
                              );
                              return Itens_user(
                                index: index,
                                nome: mob.lista_user[index]['nome'].toString(),
                              );
                            },
                          ),
                        ),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
