import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CenterView extends StatelessWidget {
  final Widget child;
  const CenterView({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1100,
        ),
        child: child,
      ),
    );
  }
}
