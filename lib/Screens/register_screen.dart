import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  InputBorder? get outlineInputBorder => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.startTop ,
      appBar: AppBar(
        title: const Text('CREATE ACCOUNT', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'User Name',
                  prefixIcon: const Icon(Icons.person_outline, color: Colors.green),
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                ),
              ),

              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined, color: Colors.green),
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 25),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline, color: Colors.green),
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  prefixIcon: const Icon(Icons.lock_outline, color: Colors.green),
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {

                },
                child: const Text('Register', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
        ),
    );
  }
}
