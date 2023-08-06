import 'package:flutter/material.dart';
import 'Epage1.dart';
import 'Epage3.dart';


class Epage2 extends StatefulWidget {
  final String? email;
  final String? username;

  Epage2({required this.email, required this.username});
  @override
  _Epage2State createState() => _Epage2State(email: '$email', username: '$username');
}

class _Epage2State extends State<Epage2> {
  String? email;
  String? username;
  _Epage2State({required this.email, required this.username});
  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
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
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Epage1(
                            email: '$email',
                            username: '$username',
                          ))),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 6, 7, 7),
                child: Expanded(
                  child: Text(
                    'Items Weight Price',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.asset(
                        'assets/15.jpg',
                        width: double.infinity,
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(60),
                      child: Text(
                        'Please descend below and behold the payment options available for your materials from us.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing glass Rs.130/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/11.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Center(
                          child: Image.asset(
                        'assets/12.jpg',
                        width: 200,
                      )),
                      SizedBox(
                        width: 25,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/8.png',
                          width: 200,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 320,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing glass Rs.130/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 26),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing plastic Rs.120/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/17.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/26.jpg',
                          width: 220,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/25.jpg',
                          width: 200,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 300,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing plastic Rs.120/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing raber Rs.140/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/34.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/36.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/37.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing raber Rs.140/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing paper Rs.150/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/30.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/32.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/13.webp',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing paper Rs.150/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing iron/matel Rs.120/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/14.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/39.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/27.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing iron/matel Rs.120/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing E-waste Rs.100/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/33.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/35.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/38.jpg',
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Container(
                          width: 280,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '1 kg material containing E-waste Rs.100/=',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(190, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Epage3(email: '$email', username: '$username',))),
                    style: ElevatedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 243, 242, 234),
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.all(20),
                        fixedSize: const Size(90, 65),
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'Go',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 246, 247, 246),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
