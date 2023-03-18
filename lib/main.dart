import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/presentation/app.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PokedexBloc()),
      ],
      child: const PokedexApp(),
    ),
  );
}
