import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:recyclingapp/signin.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _IntroScreen();
  }
}

class _IntroScreen extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.lightGreen,
            Colors.green,
            Color.fromARGB(255, 4, 77, 22),
            Color.fromARGB(255, 4, 77, 22),
          ],
        ),
      ),
    );

    return IntroductionScreen(
      globalBackgroundColor: Color.fromARGB(255, 22, 122, 25),

      pages: [
<<<<<<< HEAD
=======
        //first screen
>>>>>>> dev
        PageViewModel(
          title: "ප්‍රතිචක්‍රීකරණය",
          body:
              "ආයුබෝවන්, දැන් ඔබට ඔබගේ ඉවත් කිරීමේ දේවල් අපට ලබා දීමට හැකි වී ඇත. ඒ වගේම ඔබට ඒ සඳහා මුදල් එවෙලේම ලබා ගත හැකියි. ඔබගේ ඉවත් කිරීමේ දේවල් ඇති ස්ථානය අපට පැවසු පසු අපගේ සේවා සපයන්නන් ඔබගේ නිවසට, සමාගමට හෝ ඕනෑම ස්ථානයකට පැමිණෙනු ඇත.",
          image: Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/5.jpg',
                width: double.infinity,
                height: 280,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
<<<<<<< HEAD
=======

        //second screen
>>>>>>> dev
        PageViewModel(
          title: "Recycling",
          body:
              "Hello! You are now able to provide us with your items for removal and receive instant payment. After you inform us of the location of your removal items, our service providers will come to your home, business, or any location.",
          image: Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/2.jpg',
                width: double.infinity,
                height: 280,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
<<<<<<< HEAD
=======

        //thired screen
>>>>>>> dev
        PageViewModel(
          title: "மீள் சுழற்சி",
          body:
              "வணக்கம், இப்போது நீங்கள் அகற்றும் விஷயங்களை எங்களுக்கு வழங்க முடியும். அதற்கு நீங்கள் உடனடியாக பணம் பெறலாம். நீங்கள் அகற்றும் உருப்படிகளின் இருப்பிடத்தை எங்களிடம் தெரிவித்தவுடன், எங்கள் சேவை வழங்குநர்கள் உங்களின் எந்த இருப்பிடத்தையும் பார்வையிடுவார்கள்.",
          image: Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/3.png',
                width: double.infinity,
                height: 280,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],

      onDone: () => goHomepage(context), //go to home page on done
      onSkip: () => goHomepage(context), // You can override on skip
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,

      //skip TextButton
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
<<<<<<< HEAD
      next: const Icon(Icons.arrow_forward, color: Colors.white, size: 32),
=======

      //arrow Button
      next: const Icon(Icons.arrow_forward, color: Colors.white, size: 32),

      //Next TextButton
>>>>>>> dev
      done: const Text(
        'Next',
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20),
      ),

      //
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0), //size of dots
        color: Colors.white, //color of dots
        activeSize: Size(22.0, 10.0),
        //activeColor: Colors.white, //color of active dot
        activeShape: RoundedRectangleBorder(
          //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return signin();
    }), (Route<dynamic> route) => false);
  }

  Widget introImage(String assetName) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(assetName, width: 350.0),
    );
  }
}
