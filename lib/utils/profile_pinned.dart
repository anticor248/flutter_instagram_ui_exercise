import 'package:flutter/material.dart';

class ProfilePinned extends StatelessWidget {
  const ProfilePinned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 24,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.red,
            ),
          );
        });
  }
}
