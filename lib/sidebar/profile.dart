import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            width: 60,
            height: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset('assets/profile.jpeg')),
          ),
          SizedBox(height: 10),
          Text(
            'Pietro Oss',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              fontSize: 18,
            ),
          ),
          Text('Web Developer JR'),
          Text('poss@seac.it', style: TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
