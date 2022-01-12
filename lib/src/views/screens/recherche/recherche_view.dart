import 'package:cuisine/src/themes/serch.dart';
import 'package:cuisine/src/views/screens/recherche/recherche_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
//import 'package:cuisine/src/themes/headers.dart';

class RechercheView extends StatelessWidget {
  const RechercheView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RechercheViewModel>.reactive(
      viewModelBuilder: () => RechercheViewModel(),
      builder: (
        BuildContext context,
        RechercheViewModel model,
        Widget? child,
      ) {
        return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
          children: [Header()],
        ),
            ));
      },
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: const [
            SearchInput(),
          ],
        ));
  }
}
