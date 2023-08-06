import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recyclingapp/profile.dart';
import 'package:recyclingapp/signin.dart';
import 'contact.dart';
import 'english/Epage1.dart';

class home extends StatelessWidget {
  String? email;
  String? username;
  home({required this.email, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 247, 191),
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(
          color: Colors.white, // Change the color here
        ),
        title: const Center(
          child: Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
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
        actions: [
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 20, 0),
              child: IconButton(
                icon: const Icon(
                  Icons.recycling,
                  size: 32,
                ),
                onPressed: () {},
              )),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
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
                  Expanded(
                    child: Text(
                      '$email',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
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
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => home(
                          email: '',
                          username: '',
                        )));
              },
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
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        profile(email: '$email', username: '$username')));
              },
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
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => signin()));
              },
            ),
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
              title: Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: const Text(
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
              title: Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: const Text(
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
              title: Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: const Text(
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // Add any BoxDecoration properties you need here
              ),
              child: Center(
                child: Stack(
                  children: [
                      Positioned.fill(
                    child: Image.asset(
                      'assets/23.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                    Positioned(
                      top:0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Lottie.asset(
                        'assets/lo5.json',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 35,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Epage1(
                                    email: '$email', username: '$username'))),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 243, 242, 234),
                          backgroundColor: Color.fromARGB(255, 13, 109, 16),
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
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'GO',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 246, 247, 246),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}