import 'package:flutter/material.dart';

import 'implicit_screens/animated_container_with_curves_screen.dart';
import 'implicit_screens/animated_opacity_screen.dart';
import 'implicit_screens/tween_animation_builder_screen.dart';

class AnimationsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animations Flutter Demo')),
      body: Builder(
        builder: (context) => ListView(
          children: [
            ListTile(
              title: Text('Implicit -> AnimatedOpacity'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => AnimatedOpacityScreen()));
              },
            ),
            ListTile(
              title: Text('Implicit -> AnimatedContainer with Curves'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => AnimatedContainerWithCurvesScreen()));
              },
            ),
            ListTile(title: Text('Implicit -> TweenAnimationBuilder'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => TweenAnimationBuilderScreen()));
              },),
          ],
        ),
      ),
    );
  }
}
