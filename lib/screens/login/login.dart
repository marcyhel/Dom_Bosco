import 'package:bosco/mobx/banco/mob_banco.dart';

import 'package:bosco/screens/login/widget/warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../widgets/responsive.dart';
import 'widget/buton_login.dart';
import 'widget/input_login.dart';

final Mob_Banco mob = GetIt.I<Mob_Banco>();

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      mob.logado ? Navigator.pushNamed(context, '/clima') : null;
    });

    super.initState();
  }

  markNeedsBuild() {
    mob.logado ? Navigator.pushNamed(context, '/clima') : null;
  }

  @override
  Widget build(BuildContext context) {
    return Larg_login();
  }
}

class Larg_login extends StatefulWidget {
  Larg_login({Key? key}) : super(key: key);

  @override
  State<Larg_login> createState() => _Larg_loginState();
}

class _Larg_loginState extends State<Larg_login> {
  final Mob_Banco mob = GetIt.I<Mob_Banco>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: Container(
          width: 150,
          height: 150,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              elevation: 0,
              onPressed: null,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.width / 1.1
                : MediaQuery.of(context).size.width / 3 < 400
                    ? 400
                    : MediaQuery.of(context).size.width / 3,
            //height: 200,
            padding:
                const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 10),
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 5, color: Colors.black26, offset: Offset(1, 2))
              ],
            ),
            child: Observer(builder: (_) {
              return Column(
                children: [
                  mob.status_error ? Warnings() : Container(),
                  CustonTextField_logins(
                    valor: 'Ex. maria@email.com',
                    label: 'E-mail',
                    func: (e) {
                      mob.setEmailLogin(e);
                    },
                    erro: mob.emailErro,
                  ),
                  CustonTextField_login_passs(
                    valor: '',
                    label: 'Senha',
                    func: (e) {
                      mob.setPassLogin(e);
                    },
                    erro: mob.passError,
                  ),
                  const Divider(),
                  Button__logins(
                    nome: "Login",
                    func: () async {
                      await mob.LoginPress()
                          ? {
                              Navigator.pushNamed(context, '/adm/logado'),
                              mob.logado = true,
                            }
                          : null;
                    },
                    load: mob.load,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
