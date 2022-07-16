import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';

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
                child: const Panel(child: MetaDataPanel()),
              ),
              SizedBox(
                width: panelWidth,
                child: const Panel(child: PackageListPanel()),
              ),
            ],
          );
        },
      ),
    );
  }
}
