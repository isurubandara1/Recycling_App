import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recyclingapp/home.dart';
import 'package:recyclingapp/signin.dart';
import '../contact.dart';
import 'Epage2.dart';

class Epage1 extends StatelessWidget {
  String? email;
  String? username;
  Epage1({required this.email, required this.username});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 241, 243, 241),

            //AppBar
            appBar: AppBar(
              backgroundColor: Colors.green,
              iconTheme: IconThemeData(
                color: Colors.white, // Change the color here
              ),
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
                                    username: '$username',
                                  ))),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 0, 20, 0),
                      child: Expanded(
                        child: Text(
                          'Recycle App',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 20, 0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.home_filled,
                        size: 31,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => home(
                                  email: '$email',
                                  username: '$username',
                                )));
                      },
                    )),
              ],
            ),

            //body
            body: Container(
              //Background Image
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/42.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      //Animation Image
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Container(
                              child: Lottie.asset(
                                'assets/lo3.json',
                                width: 600,
                                height: 300,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //Sentence
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'If you have excess materials in your area,\n such as glass, metal, plastic, and so on, you can inform us. Our services will come and collect these materials, and you can receive a certain happy amount based on the  materials weight. So Come forward to know about those amounts. ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 10, 20, 10),
                            ),
                          ),
                        ),
                      ),

                      //sentence
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Not only that, If you happen to notice a large amount of any of the aforementioned \nmaterials on the road or in the surrounding area, please inform us by providing the necessary details. Your support would be greatly appreciated. Go ahead and help us create a cleaner and more beautiful environment. ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 10, 20, 10),
                            ),
                          ),
                        ),
                      ),

                      //Elevated Button
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(200, 20, 10, 0),
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Epage2(
                                        email: '$email',
                                        username: '$username'))),
                            style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 243, 242, 234),
                                backgroundColor: Colors.green,
                                padding: const EdgeInsets.all(20),
                                fixedSize: const Size(110, 70),
                                textStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                                elevation: 5,
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 249, 252, 251),
                                  width: 6,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 246, 247, 246),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
