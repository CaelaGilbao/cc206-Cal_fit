import 'package:cc206_cal_fit/auth/log_in.dart';
import 'package:cc206_cal_fit/features/food_suggestions.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final Color customGray = Color.fromARGB(255, 169, 169, 169);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C2D48),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(1),
                child: Image.asset(
                  'assets/logo.png',
                  height: 200,
                ),
              ),
              SizedBox(height: 24.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create an account',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'If you already have an account registered',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: customGray,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      //navigation logic to the registration page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                      print('Navigate to registration page');
                    },
                    child: Text(
                      'Login here!',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              buildTextFieldWithIcon(
                controller: emailController,
                labelText: 'Enter your email address',
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              buildTextFieldWithIcon(
                controller: usernameController,
                labelText: 'Enter your username',
                icon: Icons.person,
              ),
              SizedBox(height: 16.0),
              buildPasswordField(
                controller: passwordController,
                labelText: 'Enter your Password',
                isPassword: true,
              ),
              SizedBox(height: 16.0),
              buildPasswordField(
                controller: confirmPasswordController,
                labelText: 'Confirm your Password',
                isPassword: true,
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Add registration logic here
                  String email = emailController.text;
                  String username = usernameController.text;
                  String password = passwordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  // Add your logic for processing the registration data
                  print(
                      'Email: $email, Username: $username, Password: $password, Confirm Password: $confirmPassword');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Set the button color to blue
                  onPrimary: Colors.white, // Set the text color to white
                  minimumSize:
                      Size(300, 50), // Set the minimum size of the button
                ),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 16), // Set the text size
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextFieldWithIcon({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: customGray,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                color: customGray,
                fontSize: 13.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPasswordField({
    required TextEditingController controller,
    required String labelText,
    required bool isPassword,
  }) {
    return Row(
      children: [
        Icon(
          Icons.lock,
          color: customGray,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                color: customGray,
                fontSize: 13.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
