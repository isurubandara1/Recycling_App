import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Epage4.dart';


class User {
  final String name;
  final String address;
  final String seTown;
  final int contact;
  final String materials;

  User(
      {required this.name,
      required this.address,
      required this.contact,
      required this.seTown,
      required this.materials,
      });
}

class Epage3i extends StatefulWidget {
  final String? email;
  final String? username;

  Epage3i({required this.email, required this.username});
  @override
  _Epage3State createState() => _Epage3State(email: '$email', username: '$username');
}

class _Epage3State extends State<Epage3i> {
  String? email;
  String? username;
  _Epage3State({required this.email, required this.username});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final contactController = TextEditingController();
  //final townController = TextEditingController();
  final materialsController = TextEditingController();

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
    await firestore!.collection('users').add({
      'Name': user.name,
      'Address': user.address,
      'Contact': user.contact,
      'Town': user.seTown,
      'Materials':user.materials,
    });
  }

  String seTown = 'Alawwa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 2),
              child: Expanded(
                child: Text(
                  'Customer Details',
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
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Please Enter Your Accurate Details Here.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w900,
                          color: const Color.fromARGB(255, 27, 66, 39)),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Enter your name                                                                                                                                                                                    ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 22, 22, 22),
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
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value) ||
                          value.length < 6) {
                        return 'Please enter correct name with at least 6 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Isuru Bandara',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 212, 209, 209)),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Enter your address                                                                                                                                                                               ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 22, 22, 22),
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
                    controller: addressController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w\s,\\/-:.]+$').hasMatch(value)) {
                        return 'Please enter correct address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'No:02,Doratiyawa,Kurunegala.',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 212, 209, 209)),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Enter your nealy town                                                                                                                                                                                    ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 22, 22, 22),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonFormField<String>(
                    value: seTown,
                    onChanged: (String? newValue) {
                      setState(() {
                        seTown = newValue!;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Town',
                      hintText: 'Enter your town name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 212, 209, 209)),
                      border: OutlineInputBorder(),
                    ),
                    items: [
                      DropdownMenuItem<String>(
                        value: 'Alawwa',
                        child: Text(
                          'Alawwa',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Galgamuwa',
                        child: Text(
                          'Galgamuwa',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Kurunegala',
                        child: Text(
                          'Kurunegala',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Polgahawela',
                        child: Text(
                          'Polgahawela',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Mawathagama',
                        child: Text(
                          'Mawathagama',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a town';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Enter your contact number                                                                                                                                                                                  ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 22, 22, 22),
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
                    controller: contactController,
                    maxLength: 10,
                    decoration: InputDecoration(
                        counterText: "", // maxlenth eka mekimata
                        border: OutlineInputBorder(),
                        labelText: 'Contact Number',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 212, 209, 209)),
                        hintText: '0783265567'),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^0[0-9]{9}$').hasMatch(value)) {
                        return 'Please enter correct number';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Enter the materials that you would like to provide to us                                                                                                                                                                            ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 22, 22, 22),
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
                    controller: materialsController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w\s,\\/-:.]+$').hasMatch(value)) {
                        return 'Please enter correct materials';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Materials',
                      hintText: 'Glass,Plastic,E-waste,Paper,etc...',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 212, 209, 209)),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox( 
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final user = User(
                            name: nameController.text,
                            address: addressController.text,
                            contact: int.parse(contactController.text),
                            seTown: seTown,
                            materials: materialsController.text,
                          );
                          createUser(user);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                              'Hi User, your details have been received successfully. Hope our services soon.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            )),
                          );
                          nameController.clear();
                          addressController.clear();
                          contactController.clear();
                          // townController.clear();
                          materialsController.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 243, 242, 234),
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.all(20),
                          fixedSize: const Size(160, 70),
                          textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          elevation: 5,
                          side: const BorderSide(
                            color: Color.fromARGB(255, 249, 252, 251),
                            width: 6,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text('Submit'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: TextButton(
                    child: Text(
                      '_______View My Price_______',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Epage4(
                                  email: '$email',
                                  username: '$username',
                                ))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:recyclingapp/signin.dart';

// import 'Epage3i.dart';

// class e_sel extends StatefulWidget {
//   @override
//   _e_selState createState() => _e_selState(email: '', username: '');
// }

// class ListItem {
//   String name;
//   bool selected;

//   ListItem({required this.name, this.selected = false});
// }

// class _e_selState extends State<e_sel> {
//      String? email;
//   String? username;
//   _e_selState({required this.email, required this.username});

//   List<ListItem> _items = [
//     ListItem(name: 'Glass Bottle or Broken Glass materials'),
//     ListItem(name: 'Plastic materials'),
//     ListItem(name: 'Metal-Plate parts, Tin,iron'),
//     ListItem(name: 'Broken rabber materials'),
//     ListItem(name: 'Removing books, news pepars'),
//     ListItem(name: 'E-Waste-Part of computers, part of machines'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Row(
//           children: [
//             const Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 7),
//               child: Expanded(
//                 child: Text(
//                   'Select of items',
//                   style: TextStyle(
//                     fontSize: 28,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(100.0),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Select and click items that you have for giving us :',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(8, 25, 8, 10),
//         child: ListView.builder(
//           itemCount: _items.length,
//           itemBuilder: (context, index) {
//             return CheckboxListTile(
//               title: Text(_items[index].name),
//               value: _items[index].selected,
//               onChanged: (bool? value) {
//                 setState(() {
//                   _items[index].selected = value!;
//                 });
//               },
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.green,
//         child: Icon(Icons.save),
//         onPressed: () async {
//           // Save selected items to Firestore
//           CollectionReference itemsRef =
//               FirebaseFirestore.instance.collection('users');
//           List<String> selectedItems = _items
//               .where((item) => item.selected)
//               .map((item) => item.name)
//               .toList();
//           await itemsRef.doc("user").set({'selected_items': selectedItems});

//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Epage3i(),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
