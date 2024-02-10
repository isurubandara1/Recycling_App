import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

            //Appbar
            appBar: AppBar(
              backgroundColor: Colors.green,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              title: const Center(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: Expanded(
                    child: Text(
                      ' Recycling App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              //action
              actions: [
                Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 20, 0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.home,
                        size: 32,
                      ),
                      onPressed: () {},
                    )),
              ],
            ),

            //Drawer
            drawer: Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/9.jpg'),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Your Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "My Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  ListTile(
                      leading: const Icon(
                        Icons.login,
                        color: Colors.brown,
                      ),
                      title: const Text(
                        "Signin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {}),
                  const SizedBox(
                    height: 2,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.policy,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "Privacy Policies",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "Contactus",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.language,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "Languages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Text(
                        "සිංහල",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Text(
                        "தமிழ்",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Text(
                        "English",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            //body
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10.0),

                    Row(
                      children: [
                        //Text
                        const Expanded(
                          child: Text(
                              "Get in touch, We'd love to hear from you. Our friendly team is always here to chat.",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 28, 53, 34),
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold)),
                        ),

                        //animation image
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Expanded(
                            child: Container(
                              child: Lottie.asset(
                                'assets/lo4.json',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //Phone number 1
                    const SizedBox(height: 50.0),
                    Row(children: [
                      Icon(
                        Icons.phone,
                        color: Colors.brown,
                      ),
                      TextButton(
                        onPressed: () {
                          // ignore: deprecated_member_use
                          launch('tel:0778569851');
                        },
                        child: const Text("\t\t077-8569851",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ]),

                    //Phone number 2
                    Row(children: [
                      TextButton(
                        onPressed: () {
                          // ignore: deprecated_member_use
                          launch('tel:0378569851');
                        },
                        child: const Text("\t\t\t\t\t\t\t037-8569851",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ]),
                    const SizedBox(height: 15.0),

                    //email
                    Row(children: [
                      Icon(
                        Icons.email,
                        color: Colors.brown,
                      ),
                      TextButton(
                        onPressed: () {
                          launch(
                              'mailto:mbandara456@gmail.com?subject=This is Subject Title&body=This is Body of Email');
                        },
                        child: const Text("\t\tmailto:mbandara456@gmail",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                    ]),
                    const SizedBox(height: 10.0),

                    //website
                    Row(children: [
                      const Icon(
                        Icons.language,
                        color: Colors.brown,
                      ),
                      TextButton(
                        onPressed: () {
                          // ignore: deprecated_member_use
                          launch('https://protocoderspoint.com/');
                        },
                        child: const Text("\t\thttps://protocoderspoint.com",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ),
                    ]),
                    const SizedBox(height: 15.0),

                    //Address
                    const Row(children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Icon(
                          Icons.home,
                          color: Colors.brown,
                        ),
                      ),
                      Column(children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'NO:02/21,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(45, 10, 15, 0),
                          child: Text('Dorawaka road,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue)),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(65, 10, 15, 0),
                          child: Text('Sedagaskadawala,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue)),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(22, 10, 15, 0),
                          child: Text('Kurunegala.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue)),
                        ),
                      ])
                    ]),
                  ],
                ),
              ),
            )));
  }
}
