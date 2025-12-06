import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
          title: const Text('FORGOT PASSWORD', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.pink,
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(decoration: InputDecoration(hintText: 'Enter email or phone number',
            prefixIcon: Icon(Icons.email, color: Colors.green),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
            ),
              const SizedBox(height: 25),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {  },
                child: const Text('Send Link', style: TextStyle(color: Colors.white)),
              ),
        ],
          ),
        ),
),
);
}
}