import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'mob_banco.g.dart';

class Mob_Banco = _Mob_BancoBase with _$Mob_Banco;

abstract class _Mob_BancoBase with Store {
  _Mob_BancoBase() {}
  @observable
  String nome = "";
  @observable
  String sobrenome = "";
  @observable
  String num = "";
  @observable
  String email = "";
  @observable
  String cpf = "";
  @observable
  String estudante = "";
  @observable
  String idade = "";
  @observable
  String proficao = "";

  @observable
  bool Boolnome = false;
  @observable
  bool Boolsobrenome = false;
  @observable
  bool Boolnum = false;
  @observable
  bool Boolemail = false;
  @observable
  bool Boolcpf = false;
  @observable
  bool Boolestudante = false;
  @observable
  bool Boolidade = false;
  @observable
  bool Boolproficao = false;

  @observable
  bool logado = false;
  @observable
  bool load = false;
  @observable
  bool status_error = false;
  @observable
  String log_email = '';
  @observable
  String log_pass = '';
  @observable
  ObservableList lista_user = ObservableList();
  @observable
  bool load_list_user = false;

  @computed
  String get emailErro {
    if (email == '') {
      return '';
    } else if (email.isEmpty) {
      return "Campo Obrigatorio";
    } else {
      return "E-mail invalido";
    }
  }

  @computed
  bool get senhaValida => log_pass != '' && log_pass.length >= 5;
  String get passError {
    if (log_pass == '' || senhaValida) {
      return '';
    } else if (log_pass.isEmpty) {
      return "Campo Obrigatorio";
    } else {
      return "Senha muito curta";
    }
  }

  @action
  void setNome(valor) => nome = valor;
  @action
  void setSobrenome(valor) => sobrenome = valor;
  @action
  void setNum(valor) => num = valor;
  @action
  void setEmail(valor) => email = valor;

  @action
  void setEstudante(valor) => estudante = valor;
  @action
  void setIdade(valor) => idade = valor;
  @action
  void setProficao(valor) => proficao = valor;

  @action
  void setEmailLogin(valor) => log_email = valor;
  @action
  void setPassLogin(valor) => log_pass = valor;
  Future<bool> LoginPress() async {
    load = true;

    var url = "https://bosco21.herokuapp.com/adm/${log_email}/${log_pass}";
    try {
      print(url);
      var response = await http.get(
        Uri.parse(url),
      );
      var res = json.decode(response.body);
      print(res);
      if (res.length > 0) {
        status_error = false;

        logado = true;

        return true;
      } else {
        status_error = true;
      }
      print(res);
    } catch (e) {
      print(e);
    }
    load = false;
    return false;
  }

  bool preenchido() {
    if (nome == "") {
      Boolnome = true;
    } else {
      Boolnome = false;
    }
    if (sobrenome == "") {
      Boolsobrenome = true;
    } else {
      Boolsobrenome = false;
    }
    if (num == "") {
      Boolnum = true;
    } else {
      Boolnum = false;
    }
    if (email == "") {
      Boolemail = true;
    } else {
      Boolemail = false;
    }
    if (estudante == "") {
      Boolestudante = true;
    } else {
      Boolestudante = false;
    }
    if (idade == "") {
      Boolidade = true;
    } else {
      Boolidade = false;
    }
    if (proficao == "") {
      Boolproficao = true;
    } else {
      Boolproficao = false;
    }

    if (!Boolnome &&
        !Boolemail &&
        !Boolestudante &&
        !Boolidade &&
        !Boolnum &&
        !Boolproficao &&
        !Boolsobrenome) {
      return true;
    }

    return false;
  }

  void return_list_users() async {
    lista_user = ObservableList();
    setload_list_user(true);
    print("ola");
    var url = "https://bosco21.herokuapp.com/get/user/all";
    print(url);
    try {
      var response = await http.get(Uri.parse(url), headers: {
        "Accept": "application/json",
        "Access-Control_Allow_Origin": "*"
      });
      print(response);

      var res = json.decode(response.body);
      res.forEach((e) {
        lista_user.add(e);
      });
      // lista_user = ObservableList(res);
      print(res);
    } catch (e) {
      print(e);
    }
    // await Future.delayed(Duration(seconds: 1));
    setload_list_user(false);
    print(load_list_user);
  }

  @action
  void setload_list_user(valor) => load_list_user = valor;

  void enviar() async {
    if (preenchido()) {
      var url =
          "https://bosco21.herokuapp.com/add/user/${nome}/${sobrenome}/${email}/${num}/${estudante}/${idade}/${proficao}";
      print(url);
      try {
        var response = await http.get(Uri.parse(url), headers: {
          "Accept": "application/json",
          "Access-Control_Allow_Origin": "*"
        });
        print(response);

        var res = json.decode(response.body);
        print(res);
      } catch (e) {
        print(e);
      }
    }
  }

  void printar() {
    print(nome);
    print(sobrenome);
    print(num);
    print(email);
    print(estudante);
    print(idade);
    print(proficao);
  }
}
