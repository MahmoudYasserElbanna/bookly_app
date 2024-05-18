import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    this.width = 1.4,
    this.height = 2,
    required this.image,
  });
  final double width, height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
