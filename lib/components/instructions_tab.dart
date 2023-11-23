import 'package:flutter/material.dart';

class InstructionsTab extends StatelessWidget {
  const InstructionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.contacts),
        SizedBox(height: 20),
        Text("Contacts Screen!"),
      ],
    );
  }
}
