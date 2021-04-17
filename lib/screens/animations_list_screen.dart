import 'package:flutter/material.dart';
import 'package:flutter_festival_animations/screens/explicit_screens/tween_sequence_demo_screen.dart';

import 'explicit_screens/animated_builder_demo_screen.dart';
import 'explicit_screens/tween_sequence_interval_demo_screen.dart';
import 'explicit_screens/without_animated_widget_screen.dart';
import 'explicit_screens/animated_widget_demo_screen.dart';
import 'explicit_screens/rotate_transition_screen.dart';
import 'implicit_screens/animated_container_with_curves_screen.dart';
import 'implicit_screens/animated_opacity_screen.dart';
import 'explicit_screens/scale_transition_screen.dart';
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
            ListTile(
              title: Text('Implicit -> TweenAnimationBuilder'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => TweenAnimationBuilderScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> RotateTransition'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => RotateTransitionScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> SizeTransition'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => ScaleTransitionScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> without AnimatedWidget'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => WithoutAnimatedWidgetScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> AnimatedWidget'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => AnimatedWidgetDemoScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> AnimatedBuilder'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => AnimatedBuilderDemoScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> TweenSequence'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => TweenSequenceDemoScreen()));
              },
            ),
            ListTile(
              title: Text('Explicit -> Tween Staggered Interval'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => TweenSequenceIntervalDemoScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
