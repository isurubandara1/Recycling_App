import 'package:flutter/material.dart';
import 'package:recyclingapp/signin.dart';
import 'package:recyclingapp/signup.dart';

import 'home.dart';

class forgotpass extends StatelessWidget {
  const forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define a key to access the form
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  // This function is triggered when the user press the "Sign Up" button
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_userName);
      debugPrint(_password);
      debugPrint(_confirmPassword);

      /* 
      Continute proccessing the provided information with your own logic 
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
    }
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return SingleChildScrollView(
        child: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
                child: Image.asset(
                  'assets/18.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Reset Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 17, 17, 17)),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Email                                                                                                                                                                                    ',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 53, 52, 52),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Diasutr@gmail.com'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Check if the entered email has the right format
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
                onChanged: (value) => _userEmail = value,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsetsDirectional.all(15),
                child: ElevatedButton(
                  onPressed: _trySubmitForm,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 243, 242, 234),
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(320, 60),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 5,
                      side: const BorderSide(
                        color: Color.fromARGB(255, 249, 252, 251),
                        width: 4,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Reset Password'),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signin()),
                  );
                },
                child: Text(
                  '------- Go back to Login -------',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
