import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';

class Home extends StatelessWidget {
  static const route = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < constraints.maxHeight) {
          return const _PagerLayout();
        }
        final panelWidth = MediaQuery.of(context).size.width / 2;
        return _DesktopLayout(panelWidth: panelWidth);
      },
    );
  }
}

class _PagerLayout extends StatefulWidget {
  const _PagerLayout();

  @override
  State<_PagerLayout> createState() => _PagerLayoutState();
}

class _PagerLayoutState extends State<_PagerLayout> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16.0),
          // shadow
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                _pageController.jumpToPage(0);
                setState(() {
                  _page = 0;
                });
              },
              icon: Icon(
                Icons.info,
                color: _page == 0 ? Colors.white : Colors.grey.shade100,
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: _page == 0 ? 1 : 0,
              child: const Text(
                'Informations',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                _pageController.jumpToPage(1);
                setState(() {
                  _page = 1;
                });
              },
              icon: Icon(
                Icons.list_outlined,
                color: _page == 1 ? Colors.white : Colors.grey.shade100,
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: _page == 1 ? 1 : 0,
              child: const Text(
                'Dependencies',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView(
          controller: _pageController,
          restorationId: 'pageView',
          children: const [
            MetaDataPanel(
              key: Key('meta-data-panel'),
            ),
            PackageListPanel(
              key: Key('package-list-panel'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  final double panelWidth;
  const _DesktopLayout({
    required this.panelWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
      ),
    );
  }
}
