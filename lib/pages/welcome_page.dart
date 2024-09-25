import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:anughara/providers/navigation_provider.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 100.0,
            ),
            SizedBox(height: 20),
            Text(
              'Mobile App',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Provider.of<NavigationProvider>(context, listen: false)
                    .navigateToSignIn();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, 
                foregroundColor: Colors.blueGrey.shade900, 
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
