import 'package:cc206_cal_fit/features/food_picked.dart';
import 'package:cc206_cal_fit/features/userprofile.dart';
import 'package:flutter/material.dart';

class FoodSuggestion extends StatelessWidget {
  const FoodSuggestion({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    double imageWidth = 160; // Desired image width
    double imageHeight = 160; // Desired image height

    return GestureDetector(
      onTap: () {
        // Navigate to FoodPicked screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FoodPicked()),
        );
      },
      child: MaterialApp(
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
                    SizedBox(width: 280),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserProfile()));
                      },
                      child: Icon(
                        Icons.account_circle,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    'Food Choices',
                    style: TextStyle(
                      fontFamily: 'Poppins',
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
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 226, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                'Breakfast',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.5,
                                ),
                              ),
                              Image.asset(
                                'assets/image3.png',
                                width: imageWidth,
                                height: imageHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.5),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 75),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),

                              //SizedBox(height: 3),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        // Box 2 (right)
                        Container(
                          width: 150,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 226, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                'Lunch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.5,
                                ),
                              ),
                              Image.asset(
                                'assets/image2.png',
                                width: imageWidth,
                                height: imageHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.5),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 75),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),

                              //SizedBox(height: 3),
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
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 226, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                'Dinner',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.5,
                                ),
                              ),
                              Image.asset(
                                'assets/image1.png',
                                width: imageWidth,
                                height: imageHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.5),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 75),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),

                              //SizedBox(height: 3),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        // Box 2 (right)
                        Container(
                          width: 150,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 226, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                'Snack',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.5,
                                ),
                              ),
                              Image.asset(
                                'assets/image4.png',
                                width: imageWidth,
                                height: imageHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.5),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 75),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),

                              //SizedBox(height: 3),
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
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 226, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                'Soup',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.5,
                                ),
                              ),
                              Image.asset(
                                'assets/image5.png',
                                width: imageWidth,
                                height: imageHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.5),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 75),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),

                              //SizedBox(height: 3),
                            ],
                          ),
                        ),

                        SizedBox(width: 20),
                        // Box 2 (right)
                        Container(
                          width: 150,
                          height: 220,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 226, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                'Low Carbs',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.5,
                                ),
                              ),
                              Image.asset(
                                'assets/image6.png',
                                width: imageWidth,
                                height: imageHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.5),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 75),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),

                              //SizedBox(height: 3),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          // bottomNavigationBar: Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(30.0),
          //       topRight: Radius.circular(30.0),
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black12,
          //         spreadRadius: 1,
          //         blurRadius: 1,
          //       ),
          //     ],
          //   ),
          //   child: BottomNavigationBar(
          //     items: <BottomNavigationBarItem>[
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.home,
          //           color: customBlue, // Set the color of the icon
          //         ),
          //         label: 'Home',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.trending_up,
          //           color: customBlue, // Set the color of the icon
          //         ),
          //         label: 'Progress',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.document_scanner,
          //           color: customBlue, // Set the color of the icon
          //         ),
          //         label: 'Scanner',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.textsms,
          //           color: customBlue, // Set the color of the icon
          //         ),
          //         label: 'Message',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.notifications,
          //           color: customBlue, // Set the color of the icon
          //         ),
          //         label: 'Notification',
          //       ),
          //     ],
          //     showSelectedLabels: false,
          //     showUnselectedLabels: false,
          //   ),
          // ),
        ),
      ),
    );
  }
}
