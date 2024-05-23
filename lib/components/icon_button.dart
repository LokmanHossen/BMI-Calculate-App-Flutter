import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const IconButtons({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primaryContainer,
          size: 25,
        ),
      ),
    );
  }
}
