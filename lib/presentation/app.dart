import 'package:flutter/material.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_page.dart';
import 'package:pokedex_app/presentation/resources/strings.dart';
import 'package:pokedex_app/presentation/resources/theme.dart';

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.applicationName,
      themeMode: ThemeMode.system, //TODO: create logic for theme swap
      theme: PokedexTheme.light,
      darkTheme: PokedexTheme.dark,
      home: const PokedexPage(),
    );
  }
}
