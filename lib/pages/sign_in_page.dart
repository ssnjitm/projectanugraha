import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:anughara/providers/navigation_provider.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(height: 40),
              _buildTextField('Email', false),
              SizedBox(height: 20),
              _buildTextField('Password', true),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (bool? value) {}),
                      Text('Remember me', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot password?', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Updated from primary
                  foregroundColor: Colors.blueGrey.shade900, // Updated from onPrimary
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text('Sign In'),
              ),
              SizedBox(height: 20),
              Text('OR', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Provider.of<NavigationProvider>(context, listen: false)
                      .navigateToSignUp();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade700, // Updated from primary
                  foregroundColor: Colors.white, // Updated from onPrimary
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, bool obscureText) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.blueGrey.shade800,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
