import 'package:flutter/material.dart';

class BenzScreen extends StatelessWidget {
  const BenzScreen(this.goBack, {super.key});

  final VoidCallback goBack;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/benz-sclass.jpeg'),
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
