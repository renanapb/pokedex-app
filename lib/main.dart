import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/data/clients/pokeapi_client.dart';
import 'package:pokedex_app/data/data_sources/pokeapi_data_source.dart';
import 'package:pokedex_app/data/network_service.dart';
import 'package:pokedex_app/data/repositories/pokemon_repository.dart';
import 'package:pokedex_app/domain/usecases/get_basic_pokemons_use_case.dart';
import 'package:pokedex_app/presentation/app.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_bloc.dart';

void main() {
  runApp(
    RepositoryProvider(
      create: (_) => NetworkService(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => PokeApiClient(context.read()),
          ),
          RepositoryProvider(
            create: (context) => PokeApiDataSource(context.read()),
          ),
          RepositoryProvider(
            create: (context) => PokemonRepository(context.read()),
          ),
          RepositoryProvider(
            create: (context) => GetBasicPokemonsUseCase(context.read()),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => PokedexBloc(context.read())),
          ],
          child: const PokedexApp(),
        ),
      ),
    ),
  );
}
