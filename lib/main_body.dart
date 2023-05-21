import 'package:choices_app/benz_screen.dart';
import 'package:choices_app/lambo_screen.dart';
import 'package:choices_app/start_screen.dart';
import 'package:flutter/material.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  var currentScreen = 'start-screen';

  void changeToBenzScreen() {
    setState(() {
      currentScreen = 'benz-screen';
    });
  }

  void changeToLamboScreen() {
    setState(() {
      currentScreen = 'lambo-screen';
    });
  }

  void goBack() {
    setState(() {
      currentScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(changeToBenzScreen, changeToLamboScreen);

    if (currentScreen == 'benz-screen') {
      screenWidget = BenzScreen(goBack);
    } else if (currentScreen == 'lambo-screen') {
      screenWidget = LamboScreen(goBack);
    }

    return MaterialApp(
      home: Scaffold(
        body: screenWidget,
      ),
    );
  }
}

// RENDERING ITEMS CONDITIONALLY METHOD 2: INITIALZING INSIDE INIT-STATE INSTEAD OF OUTSIDE WHICH IS NOT ALLOWED

// class _MainBodyState extends State<MainBody> {
//   Widget? currentScreen;

// @override
//   void initState() {
//     super.initState();
//     currentScreen = StartScreen(changeToBenzScreen, changeToLamboScreen);
//   }

//   void changeToBenzScreen() {
//     setState(() {
//       currentScreen = BenzScreen(goBack);
//     });
//   }

//   void changeToLamboScreen() {
//     setState(() {
//       currentScreen = LamboScreen(goBack);
//     });
//   }

//   void goBack() {
//     setState(() {
//       currentScreen = StartScreen(changeToBenzScreen, changeToLamboScreen);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: currentScreen,
//       ),
//     );
//   }
// }

// RENDERING ITEMS CONDITIONALLY METHOD 2: USING IF STATEMENTS

// class _MainBodyState extends State<MainBody> {
//   var currentScreen = 'start-screen';

//   void changeToBenzScreen() {
//     setState(() {
//       currentScreen = 'benz-screen';
//     });
//   }

//   void changeToLamboScreen() {
//     setState(() {
//       currentScreen = 'lambo-screen';
//     });
//   }

//   void goBack() {
//     setState(() {
//       currentScreen = 'start-screen';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget screenWidget = StartScreen(changeToBenzScreen, changeToLamboScreen);

//     if (currentScreen == 'benz-screen') {
//       screenWidget = BenzScreen(goBack);
//     } else if (currentScreen == 'lambo-screen') {
//       screenWidget = LamboScreen(goBack);
//     }

//     return MaterialApp(
//       home: Scaffold(
//         body: screenWidget,
//       ),
//     );
//   }
// }