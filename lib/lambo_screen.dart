import 'package:flutter/material.dart';

class LamboScreen extends StatelessWidget {
  const LamboScreen(this.goBack, {super.key});

  final VoidCallback goBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/lamborghini-urus.jpg'),
        ),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: IconButton(
            color: Colors.black,
            onPressed: goBack,
            icon: const Icon(Icons.arrow_back),
            iconSize: 40,
          ),
        ),
      ],
    );
  }
}
