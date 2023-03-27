import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_bloc.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_state.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PokedexBloc, PokedexState>(
        builder: (context, pokedexState) {
          if (pokedexState.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            final pokemons = pokedexState.pokemons;
            return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) => Text(pokemons[index].name),
            );
          }
        },
      ),
    );
  }
}
