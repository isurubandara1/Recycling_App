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

      //AppBar
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

        //action of appBar
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

      //Drawer
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            //
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

            //
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

      //body part
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: Center(
                child: Stack(
                  children: [
                    //main background image
                    Positioned.fill(
                      child: Container(
                        color: Colors.white, // opacity color
                        child: Opacity(
                          opacity: 0.5, // opacity quantity
                          child: Image.asset(
                            'assets/23.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                    //sentences
                    Positioned(
                      top: 150,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "꧁༒☬ ℍ𝕖𝕪 𝕥𝕙𝕖𝕣𝕖! ☬༒꧂\n\n ℍ𝕒𝕧𝕖 𝕒 𝕘𝕠𝕠𝕕 𝕕𝕒𝕪, \n\n 𝕎𝕖 𝕒𝕣𝕖 𝕡𝕝𝕖𝕒𝕤𝕖𝕕 𝕥𝕠 𝕚𝕟𝕗𝕠𝕣𝕞 𝕪𝕠𝕦 𝕥𝕙𝕒𝕥 𝕪𝕠𝕦 𝕟𝕠𝕨 𝕙𝕒𝕧𝕖 𝕥𝕙𝕖 𝕠𝕡𝕡𝕠𝕣𝕥𝕦𝕟𝕚𝕥𝕪\𝕟 𝕥𝕠 𝕔𝕠𝕟𝕥𝕣𝕚𝕓𝕦𝕥𝕖 𝕥𝕠 \n𝕔𝕣𝕖𝕒𝕥𝕚𝕟𝕘 𝕒 𝕓𝕖𝕒𝕦𝕥𝕚𝕗𝕦𝕝 𝕖𝕟𝕧𝕚𝕣𝕠𝕟𝕞𝕖𝕟𝕥 𝕚𝕟 𝕥𝕙𝕖 𝕒𝕣𝕖𝕒 𝕤𝕦𝕣𝕣𝕠𝕦𝕟𝕕𝕚𝕟𝕘 𝕦𝕤. ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 2, 66, 4)),
                        ),
                      ),
                    ),

                    //Button
                    Positioned(
                      bottom: 15,
                      right: 35,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Epage1(
                                    email: '$email', username: '$username'))),
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 243, 242, 234),
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
