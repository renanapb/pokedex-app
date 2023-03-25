class PokemonDto {
  final int id;
  final String name;

  PokemonDto(this.id, this.name);

  PokemonDto.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
