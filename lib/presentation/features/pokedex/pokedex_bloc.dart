import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_events.dart';
import 'package:pokedex_app/presentation/features/pokedex/pokedex_states.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc() : super(const PokedexState()) {
    on<PokedexEvent>((event, emit) {});
  }
}
