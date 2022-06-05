import 'package:bosco/screens/beneficios/card_beneficio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Beneficios extends StatelessWidget {
  const Beneficios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Benefícios",
              style: TextStyle(fontFamily: 'Gogh', fontSize: 40),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Card_Beneficio(
                      titulo: 'Garagem',
                      texto: 'Garagem para carro e moto.',
                      icon: Icon(Icons.directions_car_filled_rounded,
                          color: Colors.white),
                    ),
                    Card_Beneficio(
                      titulo: 'Arborização',
                      texto: 'Local arborizado, repleto por vegetação nativa.',
                      icon: Icon(Icons.forest_rounded, color: Colors.white),
                    ),
                    Card_Beneficio(
                      titulo: 'Segurança',
                      texto:
                          'Local monitorado por cameras 24 horas, todos apartamentos possuem interfone com video porteiro.',
                      icon: Icon(Icons.security_rounded, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Card_Beneficio(
                      titulo: 'Internet',
                      texto: 'Internet Wi-Fi inclusa no aluguel.',
                      icon: Icon(Icons.wifi_rounded, color: Colors.white),
                    ),
                    Card_Beneficio(
                      titulo: 'Localização',
                      texto:
                          'Exelente localicação próxima de escolas, creches, faculdades, supermercados, e muito mais.',
                      icon: Icon(Icons.map_rounded, color: Colors.white),
                    ),
                    Card_Beneficio(
                      titulo: 'Água',
                      texto: 'Água inclusa no aluguel.',
                      icon: Icon(Icons.water_drop_rounded, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
