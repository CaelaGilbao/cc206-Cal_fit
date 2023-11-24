import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Strawberry Chia Pudding'),
          centerTitle: true, // Align the text in the center
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for Ingredients button
                    print('Ingredients button pressed');
                  },
                  child: Text('Ingredients'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for Procedure button
                    print('Procedure button pressed');
                  },
                  child: Text('Procedure'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Calories'),
                SizedBox(width: 20),
                Text('Fat'),
                SizedBox(width: 20),
                Text('Carbs'),
                SizedBox(width: 20),
                Text('Fiber'),
                SizedBox(width: 20),
                Text('Protein'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('180g'),
                SizedBox(width: 20),
                Text('9g'),
                SizedBox(width: 20),
                Text('25g'),
                SizedBox(width: 20),
                Text('4g'),
                SizedBox(width: 20),
                Text('3g'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
              children: [
                Text(
                  '1. First, add the strawberries, milk, yogurt, vanilla extract, and maple syrup to a medium or large bowl (or blender).',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
              children: [
                Text(
                  '2. Pour the ingredients using an immersion blender directly in the bowl (or in a standing blender).',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
              children: [
                Text(
                  '3. Stir chia seeds into the mixture in the bowl (transfer from the standing blender to a bowl at this point if that\'s what you used).',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
