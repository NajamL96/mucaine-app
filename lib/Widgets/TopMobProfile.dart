import 'package:flutter/material.dart';

class TopMobProfile extends StatelessWidget {
  final imageUrl;
  const TopMobProfile({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'Assets/images/bordercircle.png',
          height: 50,
          width: 50,
        ),
        Positioned(
          top: 5,
          left: 5,
          child: CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: Image.asset(
                "Assets/images/adeel.png",
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
