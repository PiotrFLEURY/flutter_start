class Command {
  final String value;
  final List<String> arguments;

  const Command(this.value, {this.arguments = const []});

  factory Command.flutterCreate(Map<String, String> arguments) {
    return Command(
      'flutter create',
      arguments: arguments.entries.map((entry) {
        return '--${entry.key}=${entry.value}';
      }).toList(),
    );
  }

  factory Command.flutterPubAdd(List<String> arguments, {bool dev = false}) {
    return Command(
      'flutter pub add${dev ? ' --dev' : ''}',
      arguments: arguments,
    );
  }

  bool get hasArguments => arguments.isNotEmpty;

  bool get hasNoArguments => arguments.isEmpty;

  @override
  String toString() {
    final argumentsString = arguments.join(' ');
    return '$value $argumentsString';
  }
}
