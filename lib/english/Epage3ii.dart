import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:recyclingapp/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class User {
  final String address;
  final String Town;
  final int contact;

  User({
    required this.address,
    required this.contact,
    required this.Town,
  });
}

class Epage3ii extends StatefulWidget {
  final String? email;
  final String? username;

  Epage3ii({required this.email, required this.username});
  @override
  _Epage3State createState() =>
      _Epage3State(email: '$email', username: '$username');
}

class _Epage3State extends State<Epage3ii> {
  String? email;
  String? username;
  _Epage3State({required this.email, required this.username});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final addressController = TextEditingController();
  final homeTownController = TextEditingController();
  final contactController = TextEditingController();

  FirebaseFirestore? firestore;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((value) {
      setState(() {
        firestore = FirebaseFirestore.instance;
      });
    });
  }

  Future<void> createUser(User user) async {
    await firestore!.collection('Road materials').add({
      'Address': user.address,
      'Home Town': user.Town,
      'Contact': user.contact,
    });
  }

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
        home: Scaffold(
            //backgroundColor: Color.fromARGB(255, 220, 122, 223),
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: IconButton(
                      iconSize: 25,
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => home(
                                    email: '$email',
                                    username: '',
                                  ))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 7),
                    child: Text(
                      'Details Bar',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "Let's keep our environment beautiful.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 7, 136, 28)),
                              )),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7, 7, 7, 0),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(35),
                                bottomRight: Radius.circular(35),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                              child: Image.asset(
                                'assets/1.jpg',
                                width: double.infinity,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "If you see this application mention materials in a particular area, please inform us. We will come and collect those items, so we appreciate your support in helping us beautify our environment.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(255, 24, 71, 5)),
                              )),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      'Please enter below, address of the area where it is located.                                                                                                                                                                              ',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: TextField(
                                      controller: addressController,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Address',
                                          hintText:
                                              'No:02,Doratiyawa,Kurunegala.'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      'Please enter below, nealy town for that location.                                                                                                                                                                                    ',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: TextField(
                                      controller: homeTownController,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Home town',
                                          hintText: 'Kurunegala'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      'Enter your contact number                                                                                                                                                                                  ',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: TextField(
                                      controller: contactController,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Contact Number',
                                          hintText: '0783265567'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(
                                      'Please upload a clear image of it below.                                                                                                                                                                                ',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.all(20),
                                      child: ElevatedButton(
                                        onPressed: () => Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) => Epage3ii(
                                                      email: '',
                                                      username: '',
                                                    ))),
                                        style: ElevatedButton.styleFrom(
                                            foregroundColor:
                                                const Color.fromARGB(
                                                    255, 243, 242, 234),
                                            backgroundColor: Colors.blue,
                                            padding: const EdgeInsets.all(20),
                                            fixedSize: const Size(280, 60),
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                            ),
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        child: const Text('Upload image'),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: AnimatedButton(
                                      width: 180,
                                      text: 'submit',
                                      color: Colors.green,
                                      pressEvent: () {
                                        AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          animType: AnimType.topSlide,
                                          showCloseIcon: true,
                                          title: 'Success',
                                          desc:
                                              'This is correct action success',
                                          btnCancelOnPress: (){},
                                          btnOkOnPress: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              final user = User(
                                                address: addressController.text,
                                                contact: int.parse(
                                                    contactController.text),
                                                Town: homeTownController.text,
                                              );
                                              createUser(user);
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                    content: Text(
                                                  'Hi User, your details have been received successfully. Hope our services soon.',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                )),
                                              );
                                              addressController.clear();
                                              contactController.clear();
                                              homeTownController.clear();
                                            }
                                          },
                                        ).show();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ])))));
  }
}
