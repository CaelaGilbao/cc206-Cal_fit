// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:cc206_cal_fit/auth/log_in.dart';
import 'package:cc206_cal_fit/features/food_suggestions.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            backgroundColor: customBlue,
            centerTitle: true,
            elevation: 0.0,
            leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FoodSuggestion()));
              },
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          body: Container(
            color: customBlue,
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: <Widget>[
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/avatar.png',
                      height: 90,
                    ),
                    SizedBox(width: 18.0),
                    Text(
                      'Edit profile picture',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 11.0,
                        decoration: TextDecoration.underline,
                        color: customGray,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Rosie Kim',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(
                      'Age',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '20',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    // Icon(
                    //   Icons.keyboard_arrow_down,
                    //   size: 13.0,
                    //   color: Colors.white,
                    // ),
                    SizedBox(width: 85.0),
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Female',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    // Icon(
                    //   Icons.keyboard_arrow_down,
                    //   size: 13.0,
                    //   color: Colors.white,
                    // ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '72 kg',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    // Icon(
                    //   Icons.keyboard_arrow_down,
                    //   size: 13.0,
                    //   color: Colors.white,
                    // ),
                    SizedBox(width: 47.0),
                    Text(
                      'Height',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '5\'2 ft',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    // Icon(
                    //   Icons.keyboard_arrow_down,
                    //   size: 13.0,
                    //   color: Colors.white,
                    // ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    Text(
                      "Weight Goal",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Normal',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    Text(
                      "Weight Target",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Lose Weight',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    Text(
                      "Activity Level",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      'Lightly Active',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 170.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    minimumSize:
                        MaterialStateProperty.all<Size>(Size(150.0, 50.0)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
