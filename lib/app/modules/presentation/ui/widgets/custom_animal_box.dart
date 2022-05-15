import 'package:flutter/material.dart';

class CustomAnimalBox extends StatelessWidget {
  final String imageAsset;

  const CustomAnimalBox({Key? key, required this.imageAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.15,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).dialogBackgroundColor,
          width: 3,
        ),
      ),
      child: Image.asset(
        imageAsset,
        fit: BoxFit.contain,
      ),
    );
  }
}
