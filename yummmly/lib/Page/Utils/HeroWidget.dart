import 'package:flutter/material.dart';
class HeroWidget extends StatelessWidget {
  final String tag;
  final Widget child;

  HeroWidget({
    required this.tag,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "${this.tag}",
      child: Material(type: MaterialType.transparency,child: child,),
    );
  }
}
