import 'package:flutter/material.dart';

class TopdeskProfile extends StatelessWidget {
  final imageUrl;
  const TopdeskProfile({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'Assets/images/bordercircle.png',
          height: 100,
          width: 100,
        ),
        Positioned(
          top: 10,
          left: 10,
          child: CircleAvatar(
            radius: 40,
            child: ClipOval(
              child: Image.asset(
                "Assets/images/adeel.png",
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
