import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType type;
  final IconData? icon;
  final double? width;
  final double height;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.icon,
    this.width,
    this.height = 52,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPrimary = type == ButtonType.primary;

    return SizedBox(
      width: width,
      height: height,
      child: isPrimary
          ? ElevatedButton(
              onPressed: isLoading ? null : onPressed,
              child: _buildChild(),
            )
          : OutlinedButton(
              onPressed: isLoading ? null : onPressed,
              child: _buildChild(),
            ),
    );
  }

  Widget _buildChild() {
    if (isLoading) {
      return const SizedBox(
        width: 22,
        height: 22,
        child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
      );
    }

    if (icon == null) {
      return Text(text);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [Icon(icon, size: 20), const SizedBox(width: 8), Text(text)],
    );
  }
}
