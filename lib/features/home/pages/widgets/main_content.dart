import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Text(AppLocalizations.of(context).one),
          color: Theme.of(context).colorScheme.secondary,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Text(AppLocalizations.of(context).two),
          color: Theme.of(context).colorScheme.secondary,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Text(AppLocalizations.of(context).three),
          color: Theme.of(context).colorScheme.secondary,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Text(AppLocalizations.of(context).four),
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
