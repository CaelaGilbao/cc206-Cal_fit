// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InstructionsTab extends StatelessWidget {
  const InstructionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return Container(
      color: customBlue,
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            width: 320,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 190, 226, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 5),
                Text(
                  'Strawberry Chia Pudding',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.star_border,
                      size: 18,
                      color: Color(0xff606060),
                    ),
                    Text(
                      '4.5 (127 Reviews)',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Color(0xff606060),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 320,
            height: 480,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 190, 226, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: ListView(
              children: [
                Text(
                  "Ingredients:",
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
                    //height: 23 / 24,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Strawberries – you can use fresh (stems removed and roughly chopped) or frozen (and thawed) for this chia pudding. ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Chia Seeds – make sure to use whole chia seeds, not ground.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Milk – I prefer oat milk, but you can use dairy milk or another plant based milk like almond or soy.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Yogurt – I prefer whole milk yogurt here, but you can use any yogurt – Greek or regular – or a plant-based yogurt alternative',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Maple Syrup – you can use another sweetener if you like, such as honey, agave, or even regular sugar (if you use regular sugar',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
