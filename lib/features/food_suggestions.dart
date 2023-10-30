import 'package:flutter/material.dart';

class FoodSuggestion extends StatelessWidget {
  const FoodSuggestion({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color darkBlue = Colors.blue; // Define the dark blue color
    double borderRadiusValue = 40.0; // Define the radius for all edges
    double imageWidth = 160; // Desired image width
    double imageHeight = 160; // Desired image height

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
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 226, 255),
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image1.png',
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Breakfast',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
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
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 226, 255),
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image2.png',
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Lunch',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
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
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 226, 255),
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image3.png',
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Dinner',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
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
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 226, 255),
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image4.png',
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Snack',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
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
              // Third Column with Two Boxes
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 226, 255),
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image5.png',
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Snacks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
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
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 190, 226, 255),
                          borderRadius:
                              BorderRadius.circular(borderRadiusValue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image6.png',
                              width: imageWidth,
                              height: imageHeight,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Drinks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
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
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: customBlue, // Set the color of the icon
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.trending_up,
                  color: customBlue, // Set the color of the icon
                ),
                label: 'Progress',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.document_scanner,
                  color: customBlue, // Set the color of the icon
                ),
                label: 'Scanner',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.textsms,
                  color: customBlue, // Set the color of the icon
                ),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: customBlue, // Set the color of the icon
                ),
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
