import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.ultrawide,
    required this.wide,
    required this.narrow,
  }) : super(key: key);

  final Widget ultrawide;
  final Widget wide;
  final Widget narrow;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final maxWidth = constrains.maxWidth;
        if (maxWidth > 1200) {
          return ultrawide;
        } else if (maxWidth > 600) {
          return wide;
        } else {
          return narrow;
        }
      },
    );
  }
}
