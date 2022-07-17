import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LanguageSelector extends StatelessWidget {
  final String value;
  final String group;
  final ValueChanged<String?> onChanged;

  const LanguageSelector({
    super.key,
    required this.value,
    required this.group,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WebsafeSvg.asset(
          'assets/icons/$value.svg',
          height: 32.0,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Radio(
          value: value,
          groupValue: group,
          onChanged: onChanged,
        ),
        Text(value),
      ],
    );
  }
}
