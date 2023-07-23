import 'package:flutter/material.dart';

class MetaDataField extends StatefulWidget {
  final String label;
  final String initialValue;
  final Function(String)? onChanged;
  const MetaDataField({
    super.key,
    required this.label,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<MetaDataField> createState() => MetaDataFieldState();
}

class MetaDataFieldState extends State<MetaDataField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: widget.label,
        suffix: IconButton(
          onPressed: () {
            _controller.clear();
          },
          icon: const Icon(Icons.close),
        ),
      ),
      onChanged: (value) => widget.onChanged?.call(value),
    );
  }
}
