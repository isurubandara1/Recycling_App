import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recyclingapp/home.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _UsernameController = TextEditingController();
  bool _success = false;
  late String _userEmail;

  void _register() async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
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

      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _signupWithEmailAndPassword() async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      print('User signed in: ${userCredential.user}');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background Image
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
            padding: const EdgeInsets.all(14.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
                      child: Column(
                        children: [
                          //Signup With Recycling App
                          Text(
                            'Signup                                                       ',
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

                  //Image
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

                  SizedBox(
                    height: 10,
                  ),

                  //User name
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Username                                                                                                                                                                               ',
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
                      controller: _UsernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        //hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length < 4) {
                          return 'Username must be at least 4 characters in length';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Email
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Email                                                                                                                                                                               ',
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
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        //hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        // Check if the entered email has the right format
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        // Return null if the entered email is valid
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Password
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Password                                                                                                                                                                               ',
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
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        //hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters in length';
                        }
                        // Return null if the entered password is valid
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Confirm Password
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Confirm Password                                                                                                                                                                               ',
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
                      decoration: InputDecoration(
                        labelText: 'Comfirm Password',
                        //hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }

                        if (value != _passwordController.text) {
                          return 'Confirm password doesn\'t match the password';
                        }

                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Button
                  Center(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(15),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _register();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 243, 242, 234),
                            backgroundColor: Color.fromARGB(255, 11, 129, 15),
                            padding: const EdgeInsets.all(20),
                            fixedSize: const Size(270, 75),
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
                        child: const Text('Sign up'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
