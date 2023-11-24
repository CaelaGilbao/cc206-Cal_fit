import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> rememberMe = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RegisterTextRow(),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 8.0), // Add a small gap between Password and Remember Me row
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
                    Text('Remember Me'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Add logic for "Forgot Password"
                    print('Forgot Password');
                  },
                  child: Text('Forgot Password'),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            Center( // Center the login button
              child: ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;
                  bool isRememberMe = rememberMe.value;
                  print('Email: $email, Password: $password, Remember Me: $isRememberMe');
                },
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Or continue with'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterTextRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Log in",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text("If you don't have an account, register"),
          ],
        ),
        Row(
          children: [
            Text('You can'),
            TextButton(
              onPressed: () {
                // Add navigation logic to the registration page
                print('Navigate to registration page');
              },
              child: Text('Register here!'),
            ),
          ],
        ),
      ],
    );
  }
}
