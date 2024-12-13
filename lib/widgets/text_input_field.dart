import 'package:flutter/material.dart';
import 'package:ts/constants/styles.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  const TextInputField({
    Key? key,
    required this.label,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: AppStyles.inputDecoration.copyWith(
        labelText: label,
      ),
    );
  }
}
