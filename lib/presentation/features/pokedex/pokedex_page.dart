import 'package:flutter/material.dart';
import 'package:pokedex_app/presentation/resources/strings.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          Strings.applicationName,
        ),
      ),
    );
  }
}
