import 'package:bosco/screens/adm/widgets/modal_info.dart';
import 'package:flutter/material.dart';

class Itens_user extends StatelessWidget {
  String nome;
  int index;
  Itens_user({
    Key? key,
    required this.nome,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext contex) {
              return Modal_info(
                index: index,
              );
            });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black26,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Center(
                    child: Text(
                  nome[0].toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Text(nome)
            ],
          ),
        ),
      ),
    );
  }
}
