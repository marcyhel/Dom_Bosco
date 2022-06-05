import 'package:bosco/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.grey[900],
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /*BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),*/
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Instagram: @donBosco',
                      s2: '',
                      s3: '',
                    ),
                  ],
                ),
                Container(
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                  height: 1,
                ),
                SizedBox(height: 20),
                InfoText(
                  type: 'Email',
                  text: 'don.bosco.imoveis@gmail.com',
                ),
                SizedBox(height: 5),
                InfoText(
                  type: 'Contato',
                  text: '(64) 99295-6313',
                ),
                SizedBox(height: 5),
                InfoText(
                  type: 'Endereço',
                  text: 'Rio Verde - GO, 75900-550',
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2022 | Don Bosco',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /*BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'AJUDA',
                      s1: 'h.marcyhel2012@gmail.com',
                      s2: '',
                      s3: '',
                    ),*/
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Instagram: @donBosco',
                      s2: '',
                      s3: '',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'don.bosco.imoveis@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Contato',
                          text: '(64) 99295-6313',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Endereço',
                          text: 'Rio Verde - GO, 75900-550',
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2022 | Don Bosco',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  BottomBarColumn({
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                html.window.open(
                    'https://www.instagram.com/donboscoimoveis_rv/',
                    'https://www.instagram.com/donboscoimoveis_rv/');
              },
              child: Text(
                s1,
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            s2,
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            s3,
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: Colors.blueGrey[300],
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
