import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/package_list_cubit.dart';
import 'package:flutter_start/presentation/home/widgets/package_list_view.dart';
import 'package:flutter_start/presentation/home/widgets/selected_package_list.dart';
import 'package:flutter_start/presentation/home/widgets/terminal_command.dart';
import 'package:flutter_start/presentation/home/blocs/states/package_list_state.dart';

class Home extends StatelessWidget {
  static const route = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final panelWidth = MediaQuery.of(context).size.width / 2;
          return Row(
            children: [
              SizedBox(
                width: panelWidth,
                child: const _Panel(child: _MetaDataPanel()),
              ),
              SizedBox(
                width: panelWidth,
                child: const _Panel(child: _PackageListPanel()),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Panel extends StatelessWidget {
  final Widget child;
  const _Panel({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _MetaDataPanel extends StatefulWidget {
  const _MetaDataPanel();

  @override
  State<_MetaDataPanel> createState() => _MetaDataPanelState();
}

class _MetaDataPanelState extends State<_MetaDataPanel> {
  String org = 'com.example';
  String name = 'my_app';
  String description = 'A new Flutter project';
  List<String> platforms = [
    'android',
    'ios',
    'web',
    'macos',
    'linux',
    'windows',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('MetaData', style: Theme.of(context).textTheme.headline4),
        _MetaDataField(
          label: 'org',
          initialValue: 'com.example',
          onChanged: (value) {
            setState(() {
              org = value;
            });
          },
        ),
        _MetaDataField(
          label: 'name',
          initialValue: 'my_app',
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
        ),
        _MetaDataField(
          label: 'description',
          initialValue: 'A new Flutter project',
          onChanged: (value) {
            setState(() {
              description = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text('Platforms', style: Theme.of(context).textTheme.headline6),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            _PlatformCheckbox(
              label: 'android',
              value: platforms.contains('android'),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    platforms.add('android');
                  } else {
                    platforms.remove('android');
                  }
                });
              },
            ),
            _PlatformCheckbox(
              label: 'ios',
              value: platforms.contains('ios'),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    platforms.add('ios');
                  } else {
                    platforms.remove('ios');
                  }
                });
              },
            ),
            _PlatformCheckbox(
              label: 'web',
              value: platforms.contains('web'),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    platforms.add('web');
                  } else {
                    platforms.remove('web');
                  }
                });
              },
            ),
            _PlatformCheckbox(
              label: 'windows',
              value: platforms.contains('windows'),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    platforms.add('windows');
                  } else {
                    platforms.remove('windows');
                  }
                });
              },
            ),
            _PlatformCheckbox(
              label: 'linux',
              value: platforms.contains('linux'),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    platforms.add('linux');
                  } else {
                    platforms.remove('linux');
                  }
                });
              },
            ),
            _PlatformCheckbox(
              label: 'macos',
              value: platforms.contains('macos'),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    platforms.add('macos');
                  } else {
                    platforms.remove('macos');
                  }
                });
              },
            ),
          ],
        ),
        const Spacer(),
        TerminalCommand(
          command: _generateCommand(),
        ),
      ],
    );
  }

  String _generateCommand() {
    // platforms
    final platformsArg =
        platforms.isEmpty ? '' : '--platforms=${platforms.join(',')}';
    // flutter create
    final String create =
        'flutter create --org=$org --description="$description" --template=app $platformsArg $name';
    return create;
  }
}

class _PlatformCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  const _PlatformCheckbox({
    required this.label,
    required this.value,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: value ? Colors.blue : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          Checkbox(
            value: value,
            onChanged: (value) => onChanged(value!),
          )
        ],
      ),
    );
  }
}

class _PackageListPanel extends StatelessWidget {
  const _PackageListPanel();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PackageListCubit(),
      child: Builder(
        builder: (context) => Column(
          children: [
            Text('Dependencies', style: Theme.of(context).textTheme.headline4),
            // Text field to enter the package name.
            const _Filter(),
            const SelectedPackageList(),
            // List of packages.
            const Expanded(
              child: PackageListView(),
            ),
            BlocBuilder<PackageListCubit, PackageListState>(
              builder: (context, state) {
                if (state.nonDevCheckedPackages.isEmpty) {
                  return Container();
                }
                return TerminalCommand(
                    command:
                        'flutter pub add ${state.nonDevCheckedPackages.join(' ')}');
              },
            ),
            BlocBuilder<PackageListCubit, PackageListState>(
                builder: (context, state) {
              if (state.devCheckedPackages.isEmpty) {
                return Container();
              }
              return TerminalCommand(
                  command:
                      'flutter pub add --dev ${state.devCheckedPackages.join(' ')}');
            }),
          ],
        ),
      ),
    );
  }
}

class _Filter extends StatefulWidget {
  const _Filter();

  @override
  State<_Filter> createState() => _FilterState();
}

class _FilterState extends State<_Filter> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Package name',
        suffix: IconButton(
          onPressed: () {
            _controller.clear();
            context.packageListCubit.filter('');
          },
          icon: const Icon(Icons.close),
        ),
      ),
      onChanged: (String value) => context.packageListCubit.filter(value),
    );
  }
}

class _MetaDataField extends StatefulWidget {
  final String label;
  final String initialValue;
  final Function(String)? onChanged;
  const _MetaDataField({
    required this.label,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<_MetaDataField> createState() => _MetaDataFieldState();
}

class _MetaDataFieldState extends State<_MetaDataField> {
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
      onChanged: (String value) => widget.onChanged?.call(value),
    );
  }
}
