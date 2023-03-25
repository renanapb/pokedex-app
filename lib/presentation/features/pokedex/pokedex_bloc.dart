import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/domain/usecases/get_basic_pokemons_use_case.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_events.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  final GetBasicPokemonsUseCase _basicPokemonsUseCase;

  PokedexBloc(this._basicPokemonsUseCase) : super(const PokedexState()) {
    on<LoadPokedexPage>(_loadNewPage);
    add(LoadPokedexPage());
  }

  void _loadNewPage(LoadPokedexPage event, Emitter<PokedexState> emit) async {
    emit(state.copyWith(isLoading: true));
    final nextPage = state.currentPage + 1;
    final pokemons = await _basicPokemonsUseCase(page: nextPage);
    //TODO: handle errors
    emit(state.copyWith(
      isLoading: false,
      pokemons: pokemons,
      currentPage: nextPage,
    ));
  }
}
