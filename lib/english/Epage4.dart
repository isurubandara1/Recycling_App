import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:recyclingapp/english/Epage4.dart';

import '../home.dart';

class Epage4 extends StatelessWidget {
  //const Epage4({super.key});
  String? email;
  String? username;
  Epage4({required this.email, required this.username});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
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
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
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
                  Icons.home,
                  size: 32,
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
        body: SummationScreen(),
      ),
    );
  }
}

class SummationScreen extends StatefulWidget {
  @override
  _SummationScreenState createState() => _SummationScreenState();
}

class _SummationScreenState extends State<SummationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _Glass = TextEditingController(text: "0");
  final _Plastic = TextEditingController(text: "0");
  final _Raber = TextEditingController(text: "0");
  final _Iron = TextEditingController(text: "0");
  final _Paper = TextEditingController(text: "0");
  final _Ewaste = TextEditingController(text: "0");
  final _Matel = TextEditingController(text: "0");
  int _sum = 0;

  void _calculateSum() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _sum = int.parse(_Glass.text) * 130 +
            int.parse(_Plastic.text) * 120 +
            int.parse(_Raber.text) * 140 +
            int.parse(_Iron.text) * 120 +
            int.parse(_Paper.text) * 150 +
            int.parse(_Ewaste.text) * 100 +
            int.parse(_Matel.text) * 120;
      });
    }
  }

  TextFormField _buildMaterialTextField(
      TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: '$label Kg',
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/42.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "If you want to get an estimate of the total price approximately, please enter your details from Kg below and you will be able to see the calculated amount.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 53, 35),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Glass",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 53, 4),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _Glass,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Glass Kg',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Plastic",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                         color: Color.fromARGB(255, 2, 53, 4),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        controller: _Plastic,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Plastic Kg',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Raber",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 53, 4),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        controller: _Raber,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Raber Kg',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Iron",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 53, 4),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        controller: _Iron,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Iron Kg',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Paper",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 53, 4),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        controller: _Paper,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Paper Kg',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("E-waste",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 53, 4),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        controller: _Ewaste,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'E-waste Kg',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Matel",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 53, 4),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        controller: _Matel,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Matel Kg',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: _calculateSum,
                child: Text(
                  "View My Price",
                  style: TextStyle(fontSize: 18),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Approximately, Your price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 53, 4),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Rs $_sum /=',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 107, 52),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    )));
  }
}
