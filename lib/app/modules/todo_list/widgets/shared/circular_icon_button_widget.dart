import 'package:flutter/material.dart';

class CircularIconButtonWidget extends StatelessWidget {
  const CircularIconButtonWidget({
    Key? key,
    required this.iconSize,
    required this.icon,
    required this.backgroundColor,
    required this.splashColor,
    required this.color,
    required this.function,
  }) : super(key: key);

  final double iconSize;
  final IconData icon;
  final Color backgroundColor;
  final Color splashColor;
  final Color color;
  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: backgroundColor,
        child: IconButton(
          splashColor: splashColor,
          icon: Icon(
            icon,
            color: color,
            size: iconSize,
          ),
          onPressed: function,
        ),
      ),
    );
  }
}
