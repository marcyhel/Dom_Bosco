import 'package:bosco/mobx/banco/mob_banco.dart';
import 'package:bosco/screens/adm/logado.dart';
import 'package:bosco/screens/login/login.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'screens/principal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  singletonsApp();
  runApp(MyApp());
}

void singletonsApp() {
  GetIt.I.registerSingleton(Mob_Banco());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Principal(),
      routes: {
        '': (context) => Principal(),
        '/adm': (context) => Login(),
        '/adm/logado': (context) => Logado(),
      },
    );
  }
}
