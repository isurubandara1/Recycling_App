import 'dart:io' show File;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import 'home.dart';

class profile extends StatefulWidget {
  final String? email;
  final String? username;

  profile({required this.email, required this.username});
  @override
  _profileState createState() => _profileState(email: '$email', username: '$username');
}

class _profileState extends State<profile> {
 
  File? _imageFile;

  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = '${directory.path}/profile.jpg';
    final imageFile = File(imagePath);

    setState(() {
      _imageFile = imageFile;
    });
  }

  Future<void> _saveImage(File image) async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = '${directory.path}/profile.jpg';
    await directory.create(recursive: true);

    await image.copy(imagePath);

    setState(() {
      _imageFile = image;
    });
  }

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    if (pickedFile != null) {
      final image = File(pickedFile.path);
      await _saveImage(image);
    }
  }
 String? email;
  String? username;
  _profileState({required this.email, required this.username});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.green,
  title: Row(
    children: [
      // Padding(
      //   padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
      //   child: IconButton(
      //     iconSize: 25,
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () => Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => home(
      //         email: email,
      //         username: username,
      //       ),
      //     )),
      //   ),
      // ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 6, 7, 7),
          child: Text(
            'My Profile  ⭐ ⭐ ⭐',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
    ],
  ),
),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    _getImage(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.image),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('Choose from gallery'),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    _getImage(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.camera_alt),
                                      SizedBox(width: 20),
                                      Text('Take a photo'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                                   
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            child: Stack(
                              alignment: AlignmentDirectional.topStart,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: _imageFile != null &&
                                              _imageFile!.existsSync()
                                          ? Image.file(
                                              _imageFile!,
                                              width: 140,
                                              height: 140,
                                              fit: BoxFit.cover,
                                            )
                                          : Container(
                                              width: 140,
                                              height: 140,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[400],
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Icon(
                                                Icons.photo_camera,
                                                size: 50,
                                                color: Colors.white,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      100, 120, 0, 20),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.black54,
                                    ),
                                    onPressed: () async {
                                      final directory =
                                          await getApplicationDocumentsDirectory();
                                      final imagePath =
                                          '${directory.path}/profile.jpg';
                                      final imageFile = File(imagePath);

                                      if (imageFile.existsSync()) {
                                        await imageFile.delete();
                                      }

                                      setState(() {
                                        _imageFile = null;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                '$email',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.brown),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
