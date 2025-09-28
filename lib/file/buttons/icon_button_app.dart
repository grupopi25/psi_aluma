import 'package:flutter/material.dart';

class IconButtonApp {
  static Widget backButton({
    required BuildContext context,
    IconData icon = Icons.chevron_left,
    Color color = Colors.white,
    double size = 30,
    VoidCallback? onPressed,
    String label = 'Voltar',
    EdgeInsets padding = const EdgeInsets.all(8),
  }) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.pop(context),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: size),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
