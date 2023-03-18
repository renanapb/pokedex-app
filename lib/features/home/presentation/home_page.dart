import 'package:flutter/material.dart';
import 'package:pokedex_app/resources/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
