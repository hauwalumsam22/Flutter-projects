import 'package:csc312/Screens/forgot_password_screen.dart';
import 'package:csc312/Screens/register_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ), backgroundColor: Colors.pink,
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/login_image.jfif',
                    height: 200,
                  ),
                  SizedBox(height: 25),
                  const TextField(
                    decoration: InputDecoration(hintText: 'Email',
                    prefixIcon: Icon(Icons.email, color: Colors.green),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.green),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Text('Forgot Password?',
                          style: TextStyle(
                              fontSize: 20, color: Colors.deepPurpleAccent))),
                  SizedBox(
                    height: 25,
                  ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      onPressed: () {  },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const RegisterScreen()),
                        );
                      },
                      child: Text('Register', style: TextStyle(fontSize: 18, color: Colors.deepPurpleAccent))),
                ],
              ),
            )));
  }
}
