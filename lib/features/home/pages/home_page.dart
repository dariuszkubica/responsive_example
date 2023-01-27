import 'package:flutter/material.dart';
import 'package:responsive_example/core/responsive_layout.dart';

import 'widgets/extra_panel.dart';
import 'widgets/main_content.dart';
import 'widgets/navigation_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      ultrawide: _UltraWideHomePage(),
      wide: _WideHomePage(),
      narrow: _NarrowWideHomePage(),
    );
  }
}

class _UltraWideHomePage extends StatelessWidget {
  const _UltraWideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 300,
            child: NavigationPanel(),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: MainContent(),
                    ),
                    Expanded(
                      child: ExtraPanel(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WideHomePage extends StatelessWidget {
  const _WideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            width: 200,
            child: NavigationPanel(),
          ),
          Expanded(
            child: MainContent(),
          ),
          Expanded(
            child: ExtraPanel(),
          ),
        ],
      ),
    );
  }
}

class _NarrowWideHomePage extends StatelessWidget {
  const _NarrowWideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(child: NavigationPanel()),
      body: ListView(
        children: const [
          MainContent(),
          ExtraPanel(),
        ],
      ),
    );
  }
}
