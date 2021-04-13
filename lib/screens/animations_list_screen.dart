import 'package:flutter/material.dart';

class AnimationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animations Flutter Demo')),
      body: Builder(
        builder: (context) => ListView(
          children: [
            ListTile(title: Text('Implicit -> AnimatedOpacity')),
            ListTile(title: Text('Implicit -> AnimatedSize')),
            ListTile(title: Text('Implicit -> TweenAnimationBuilder')),
            ListTile(title: Text('Implicit -> with Curves')),
          ],
        ),
      ),
    );
  }
}
