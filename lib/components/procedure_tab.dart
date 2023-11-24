import 'package:flutter/material.dart';

class ProcedureTab extends StatelessWidget {
  const ProcedureTab({super.key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return Container(
      color: customBlue,
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
    );
  }
}
