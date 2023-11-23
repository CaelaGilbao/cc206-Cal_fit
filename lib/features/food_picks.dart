import 'package:cc206_cal_fit/components/instructions_tab.dart';
import 'package:cc206_cal_fit/components/procedure_tab.dart';
import 'package:flutter/material.dart';

class FoodPicks extends StatefulWidget {
  const FoodPicks({super.key});
  @override
  State<FoodPicks> createState() => _FoodPicks();
}

class _FoodPicks extends State<FoodPicks> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2, // Set the length to 2 since you have 2 tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Picked Food'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Instructions'),
              Tab(
                text: 'Procedure',
              ),
            ],
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
