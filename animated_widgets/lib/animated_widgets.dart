library animated_widgets;

import 'package:flutter/material.dart';

class BounceInWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const BounceInWidget({super.key, required this.child, this.duration = const Duration(seconds: 1)});

  @override
  State<BounceInWidget> createState() => _BounceInWidgetState();
}

class _BounceInWidgetState extends State<BounceInWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
