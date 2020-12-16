import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    @required this.screenSize,
    @required this.assetPath,
  }) : super(key: key);

  final Size screenSize;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height,
          color: Colors.black.withOpacity(0.2),
        ),
      ],
    );
  }
}
