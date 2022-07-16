import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';

class MetaDataPanel extends StatefulWidget {
  const MetaDataPanel({super.key});

  @override
  State<MetaDataPanel> createState() => MetaDataPanelState();
}

class MetaDataPanelState extends State<MetaDataPanel> {
  String org = 'com.example';
  String name = 'myapp';
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
        MetaDataField(
          label: 'org',
          initialValue: 'com.example',
          onChanged: (value) {
            setState(() {
              org = value;
            });
          },
        ),
        MetaDataField(
          label: 'name',
          initialValue: 'myapp',
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
        ),
        MetaDataField(
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
            PlatformCheckbox(
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
            PlatformCheckbox(
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
            PlatformCheckbox(
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
            PlatformCheckbox(
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
            PlatformCheckbox(
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
            PlatformCheckbox(
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
          command: generateCommand(),
        ),
      ],
    );
  }

  String generateCommand() {
    // platforms
    final platformsArg =
        platforms.isEmpty ? '' : '--platforms=${platforms.join(',')}';
    // flutter create
    final String create =
        'flutter create --org=$org --description="$description" --template=app $platformsArg $name';
    return create;
  }
}
