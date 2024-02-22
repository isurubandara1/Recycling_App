import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recyclingapp/home.dart';
import 'forgotpass.dart';
import 'signup.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _success = false;
  late String _userEmail;

  void _signInWithEmailAndPassword() async {
    //
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      setState(() {
        _success = true;
        _userEmail = userCredential.user!.email!;

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => home(
                    email: _emailController.text,
                    username: '',
                  )),
        );
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        _success = false;
      });

      //showDialog for "user-not-found"
      if (e.code == 'user-not-found') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Login Failed",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text(
                  "No user found for that email.\nEnter a your correct email."),
              actions: [
                TextButton(
                  child: Text(
                    "OK",
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

        ////showDialog for "wrong-password"
      } else if (e.code == 'wrong-password') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Login Failed",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text("Wrong password, Enter a your correct password."),
              actions: [
                TextButton(
                  child: Text(
                    "OK",
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

        //showDialog for "others"
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Login Failed",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text("An error occurred while trying to log in."),
              actions: [
                TextButton(
                  child: Text(
                    "OK",
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Background Image
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/41.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        //
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Login With Recycling App
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
                      child: Column(
                        children: [
                          Text(
                            'Login                                                      ',
                            style: TextStyle(
                                fontSize: 46,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 30, 31, 30)),
                          ),
                          Text(
                            'With Recycling App                                          ',
                            style: TextStyle(
                                fontSize: 30,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 17, 17, 17)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 2.0),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.asset(
                        'assets/40.png',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  SizedBox(height: 8.0),

                  //Email TextField
                  TextFormField(
                    controller: _emailController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      // Return null if the entered email is valid Successful
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),

                  //password TextField
                  SizedBox(height: 26.0),
                  TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters in length';
                      }
                      if (value != _passwordController.text) {
                        return 'Confirm password doesn\'t match the password';
                      }
                      // Return null if the entered password is valid
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.0),

                  //Login Button
                  Center(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(15),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _signInWithEmailAndPassword();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 243, 242, 234),
                            backgroundColor: Color.fromARGB(255, 11, 129, 15),
                            padding: const EdgeInsets.all(20),
                            fixedSize: const Size(300, 75),
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            elevation: 5,
                            side: const BorderSide(
                              color: Color.fromARGB(255, 249, 252, 251),
                              width: 4,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text('Login'),
                      ),
                    ),
                  ),

                  //Forgot Password
                  SizedBox(height: 1.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => forgotpass(),
                        ),
                      );
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),

                  //Signup Button
                  SizedBox(height: 1.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signup(),
                        ),
                      );
                    },
                    child: const Text(
                      'Don\'t have an account? Sign Up',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 12.0),

                  //
                  _success == true
                      ? Text(
                          'Login Successful\nUser: $_userEmail',
                          style: TextStyle(color: Colors.green),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
