import 'package:cc206_cal_fit/components/instructions_tab.dart';
import 'package:cc206_cal_fit/components/procedure_tab.dart';
import 'package:flutter/material.dart';

class FoodPicked extends StatefulWidget {
  const FoodPicked({super.key});
  @override
  State<FoodPicked> createState() => _FoodPicked();
}

class _FoodPicked extends State<FoodPicked> {
  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2, // Set the length to 2 since you have 2 tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Picked Food',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: customBlue,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Instructions'),
              Tab(
                text: 'Procedure',
              ),
            ],
            labelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.0, // Adjust the font size
              fontWeight: FontWeight.bold, // Adjust the font weight
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.0, // Adjust the font size for unselected tabs
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            InstructionsTab(),
            ProcedureTab(),
          ],
        ),
      ),
    );
  }
}
