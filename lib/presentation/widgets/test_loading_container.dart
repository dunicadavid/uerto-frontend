// File created by
// Dunica David-Gabriel <FLTY>
// on 12/06/2023 20:59:57

import 'package:flutter/material.dart';

class LeftToRightLoadingContainer extends StatefulWidget {
  const LeftToRightLoadingContainer({super.key});

  @override
  _LeftToRightLoadingContainerState createState() => _LeftToRightLoadingContainerState();
}

class _LeftToRightLoadingContainerState extends State<LeftToRightLoadingContainer> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) { // Update the builder parameter
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: FractionallySizedBox(
            widthFactor: _animation.value,
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark.withOpacity(0.1),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
