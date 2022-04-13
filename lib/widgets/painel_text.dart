import 'package:flutter/material.dart';

class Painel_Text extends StatelessWidget {
  const Painel_Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            height: 250,
            width: 40,
            color: Color(0xffCAE8E2),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Traveling Delights",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 2,
                    width: 100,
                    color: Colors.black54),
                const Text(
                  "Below you will find a selection of sample group tours and vacations that give an idea of the type of itinerary that can be put together. Please note that these are only sample itineraries and every tour we create is tailored to meet the group’s needs. We work with each individual tour organiser to personalise tours to meet their exact requirements. Each of the itineraries can be customized for large or small private group tours.",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
