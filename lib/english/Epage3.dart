import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recyclingapp/english/Epage3ii.dart';
import '../home.dart';
import 'Epage2.dart';
import 'Epage3i.dart';


class Epage3 extends StatefulWidget {
  final String? email;
  final String? username;

  Epage3({required this.email, required this.username});
  @override
  _Epage3State createState() => _Epage3State(email: '$email', username: '$username');
}

class _Epage3State extends State<Epage3> {
  String? email;
  String? username;
  _Epage3State({required this.email, required this.username});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Icons.sentiment_dissatisfied,
                  ),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Epage2(
                            email: '$email',
                            username: '$username',
                          ))),
                ),
              ),
              Expanded(
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 6, 7, 7),
                  
                    child: Text(
                      'Selection bar',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ),
              
              ),
            ],
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Container(
                    child: Lottie.asset(
                      'assets/lo1.json',
                      width: 600,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Epage3i(email: '$email', username: '',))),
                    style: ElevatedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 243, 242, 234),
                        backgroundColor: Color.fromARGB(255, 78, 189, 97),
                        padding: const EdgeInsets.all(20),
                        fixedSize: const Size(400, 140),
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
                            borderRadius: BorderRadius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text("For your Place's Matrials",
                                  style: TextStyle(
                                    fontSize: 23,
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                child: Lottie.asset(
                                  'assets/lo2.json',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                     onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Epage3ii(email: '$email', username: '',))),
                    style: ElevatedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(255, 243, 242, 234),
                        backgroundColor: Color.fromARGB(255, 78, 189, 97),
                        padding: const EdgeInsets.all(20),
                        fixedSize: const Size(400, 140),
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
                            borderRadius: BorderRadius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text('For Road Materials',
                                  style: TextStyle(
                                    fontSize: 23,
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                child: Lottie.asset(
                                  'assets/lo2.json',
                                  width: 300,
                                  height: 250,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
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
    );
  }
}

