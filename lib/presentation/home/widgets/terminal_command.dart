import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class TerminalCommand extends StatelessWidget {
  final String command;
  const TerminalCommand({
    super.key,
    required this.command,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      // make terminal like decoration
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Wrap(
            children: [
              Text(
                command,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                FlutterClipboard.copy(command).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Copied to clipboard'),
                    ),
                  );
                });
              },
              icon: const Icon(
                Icons.content_copy,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
