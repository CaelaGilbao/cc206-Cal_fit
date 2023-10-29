import 'package:flutter/material.dart';

class FoodSuggestion extends StatelessWidget {
  const FoodSuggestion({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/logo.png',
            height: 75,
          ),
          centerTitle: true,
          backgroundColor: customBlue,
          elevation: 0.0,
        ),
        body: Container(
          color: customBlue,
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 175),
                  Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Food Suggestions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // First Column with Two Boxes
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.blue,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image1.png'),
                            SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            Text(
                              'Breakfast',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      // Box 2 (right)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.green,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image2.jpg'),
                            SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            Text(
                              'Lunch',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Second Column with Two Boxes
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.red,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image3.jpg'),
                            SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            Text(
                              'Dinner',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      // Box 2 (right)
                      Container(
                        width: 150,
                        height: 150,
                        color: Colors.yellow,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image4.jpg'),
                            SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            Text(
                              'Snack',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Third Column with Two Boxes (Add your new set of images and text here)
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.orange,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image5.jpg'),
                            SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            Text(
                              'Snacks',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 20),
                      // Box 2 (right)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.purple,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image6.jpg'),
                            SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            Text(
                              'Drinks',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.blue, // Change the color to a visible color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Color.fromRGBO(198, 228, 255, 1)),
              BottomNavigationBarItem(
                icon: Icon(Icons.trending_up),
                label: 'Progress',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.document_scanner),
                label: 'Scanner',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.textsms),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',
              ),
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
