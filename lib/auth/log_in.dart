import 'package:cc206_cal_fit/features/food_suggestions.dart';
import 'package:cc206_cal_fit/features/userprofile.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> rememberMe = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: customBlue,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/logo.png',
                      height: 200.0,
                    ),
                  ),
                  RegisterTextRow(),
                  SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.email,
                          size: 28,
                          color: customGray,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: TextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                fontSize: 15.0,
                                color: customGray,
                              ),
                              contentPadding: EdgeInsets.only(bottom: 11.0),
                              isDense: true,
                            ),
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.lock,
                          size: 28,
                          color: customGray,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontSize: 15.0,
                                color: customGray,
                              ),
                              contentPadding: EdgeInsets.only(bottom: 11.0),
                              isDense: true,
                            ),
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ValueListenableBuilder<bool>(
                            valueListenable: rememberMe,
                            builder: (context, value, child) {
                              return Checkbox(
                                value: value,
                                onChanged: (newValue) {
                                  rememberMe.value = newValue ?? false;
                                },
                              );
                            },
                          ),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              color: customGray,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Add logic for "Forgot Password"
                          print('Forgot Password');
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        String email = emailController.text;
                        String password = passwordController.text;
                        bool isRememberMe = rememberMe.value;
                        print(
                            'Email: $email, Password: $password, Remember Me: $isRememberMe');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodSuggestion()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(250.0, 50.0)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or continue with',
                        style: TextStyle(
                          fontFamily: 'Popppins',
                          fontSize: 10,
                          color: customGray,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon(icon: Icons.facebook),
                      SizedBox(width: 7),
                      SocialIcon(icon: Icons.apple),
                    ],
                  ),
                  SizedBox(height: 150.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;

  SocialIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30.0,
      color: Colors.blue,
    );
  }
}

class RegisterTextRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color customGray = Color(int.parse("0xFFABABAB"));

    return Column(
      children: [
        Row(
          children: [
            Text(
              "Log in",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "If you don't have an account,",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: customGray,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'You can',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: customGray,
                fontSize: 12,
              ),
            ),
            TextButton(
              onPressed: () {
                //navigation logic to the registration page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
                print('Navigate to registration page');
              },
              child: Text(
                'Register here!',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
