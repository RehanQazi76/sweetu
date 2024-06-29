
import 'package:flutter/material.dart';

class CCurvedBorderImage extends StatelessWidget {
  const CCurvedBorderImage({
    super.key,
    this.isNetwork = false,
    required this.imageSource,
  });

  final bool isNetwork;
  final String imageSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(20), // Ensures the image is also curved
        child: Image(
          image: isNetwork
              ? NetworkImage(imageSource) as ImageProvider
              : AssetImage(imageSource),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
