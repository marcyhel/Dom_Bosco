import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'dart:html' as html;

class Maps extends StatelessWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(child: Text("Localização Residencial Don Bosco")),
        Container(
          width: ReturnResponse(
                  g: MediaQuery.of(context).size.width / 1.5,
                  m: MediaQuery.of(context).size.width / 1.2,
                  p: MediaQuery.of(context).size.width / 1.1)
              .retorno(context),
          height: ReturnResponse(g: 400, m: 300, p: 200).retorno(context),
          margin: EdgeInsets.only(
            top: ReturnResponse(g: 80, m: 50, p: 0).retorno(context),
          ),
          child: FlutterMap(
            options: MapOptions(
                maxZoom: 16.5,
                minZoom: 16.5,
                center: LatLng(-17.78329920276256, -50.92959685217984),
                zoom: 16.5,
                allowPanningOnScrollingParent: false,
                onTap: (e, r) {
                  html.window.open(
                      'https://www.google.com.br/maps/place/R.+Antônio+Bernadino+Ataides,+1340+-+Jardim+America+Prolongamento+A,+Rio+Verde+-+GO,+75900-550/@-17.7834381,-50.9296307,18.86z/data=!4m5!3m4!1s0x9361dca0ae0527b5:0xf0483236b647ddbe!8m2!3d-17.7836366!4d-50.9295147',
                      'https://www.google.com.br/maps/place/R.+Antônio+Bernadino+Ataides,+1340+-+Jardim+America+Prolongamento+A,+Rio+Verde+-+GO,+75900-550/@-17.7834381,-50.9296307,18.86z/data=!4m5!3m4!1s0x9361dca0ae0527b5:0xf0483236b647ddbe!8m2!3d-17.7836366!4d-50.9295147');
                }),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
                attributionBuilder: (_) {
                  return Text("©Dom Bosco");
                },
                minNativeZoom: 17,
                maxNativeZoom: 17,
                maxZoom: 17,
                minZoom: 17,
              ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(-17.783034646070707, -50.92976130090647),
                    builder: (ctx) =>
                        Container(child: Image.asset('assets/pin_map.png')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
