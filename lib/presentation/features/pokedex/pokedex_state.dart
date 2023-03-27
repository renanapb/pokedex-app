import 'package:equatable/equatable.dart';
import 'package:pokedex_app/domain/models/pokemon.dart';

class PokedexState extends Equatable {
  final bool isLoading;
  final List<Pokemon> pokemons;
  final int currentPage;

  const PokedexState({
    this.isLoading = false,
    this.pokemons = const [],
    this.currentPage = -1,
  });

  PokedexState copyWith({
    bool? isLoading,
    List<Pokemon>? pokemons,
    int? currentPage,
  }) =>
      PokedexState(
        isLoading: isLoading ?? this.isLoading,
        pokemons: pokemons ?? this.pokemons,
        currentPage: currentPage ?? this.currentPage,
      );

  @override
  List<Object?> get props => [
        isLoading,
        pokemons,
      ];
}
