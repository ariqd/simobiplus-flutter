import 'package:flutter/material.dart';

class SinarmasButtonRounded extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onPressed;
  final bool disabled;

  const SinarmasButtonRounded(
    this.buttonText, {
    super.key,
    required this.onPressed,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.infinity,
          minHeight: 50,
        ),
        child: ElevatedButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
