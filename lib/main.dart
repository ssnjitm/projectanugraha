import 'package:firebase_core/firebase_core.dart';
import 'package:anughara/pages/sign_in_page.dart';
import 'package:anughara/pages/sign_up_page.dart';
import 'package:anughara/pages/welcome_page.dart';
import 'package:anughara/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async { //async for await 

 //firebase setup 
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Consumer<NavigationProvider>(
        builder: (context, navigationProvider, child) {
          switch (navigationProvider.currentIndex) {
            case 1:
              return SignInPage();
            case 2:
              return SignUpPage();
            default:
              return WelcomePage();
          }
        },
      ),
    );
  }
}
