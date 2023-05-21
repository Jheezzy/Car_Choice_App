import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changeToBenzScreen, this.changeToLamboScreen,
      {super.key});

  final VoidCallback changeToBenzScreen;
  final VoidCallback changeToLamboScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Make Your Choice',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(40),
                  ),
                  onPressed: changeToBenzScreen,
                  child: const Text(
                    'BENZ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(40),
                  ),
                  onPressed: changeToLamboScreen,
                  child: const Text(
                    'LAMBO',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Make Your Choice'),
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 ElevatedButton(onPressed: () {}, child: Text('BENZ')),
//                 ElevatedButton(onPressed: () {}, child: Text('LAMBO'))
//               ],
//             )
//           ],
//         )),