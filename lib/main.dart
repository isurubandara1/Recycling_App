import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recyclingapp/IntroScreen.dart';
import 'package:recyclingapp/signup.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Simulate some initialization process
  Future<void> _initializeApp() async {
    try {
      await Future.delayed(Duration(seconds: 15));
    } catch (error) {
      print("Error during initialization: $error");
      // Handle initialization error as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initializeApp(),
        builder: (context, snapshot) {
          try {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the initialization is complete, show the main app content
              return IntroScreen(); // Change this line if needed
            } else {
              // Otherwise, show the loading screen
              return LoadingScreen();
            }
          } catch (error) {
            print("Error in FutureBuilder: $error");
            // Handle FutureBuilder error as needed
            return ErrorScreen();
          }
        },
      ),
    );
  }
}

// Loading page
class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/1.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '𝖂𝖊𝖑𝖈𝖔𝖒𝖊 \n 𝔚𝔢 𝔞𝔯𝔢 𝔭𝔩𝔢𝔞𝔰𝔢𝔡 𝔱𝔥𝔞𝔱 𝔶𝔬𝔲 𝔞𝔯𝔢 𝔲𝔰𝔦𝔫𝔤 𝔬𝔲𝔯 𝔞𝔭𝔭',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } catch (error) {
      print("Error in LoadingScreen: $error");
      // Handle LoadingScreen error as needed
      return ErrorScreen();
    }
  }
}

// Error screen
class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('An error occurred. Please try again later.'),
        ),
      );
    } catch (error) {
      print("Error in ErrorScreen: $error");
      // Handle ErrorScreen error as needed
      return Container(); // Placeholder, won't be visible
    }
  }
}
