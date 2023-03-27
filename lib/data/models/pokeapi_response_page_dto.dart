class PokeApiResponsePage {
  final int count;
  final String? next;
  final String? previous;
  final List<PokeApiResults> results;

  PokeApiResponsePage(
    this.count,
    this.next,
    this.previous,
    this.results,
  );

  PokeApiResponsePage.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        next = json['next'],
        previous = json['previous'],
        results = List<PokeApiResults>.from(json['results'].map(
          (result) => PokeApiResults.fromJson(result),
        ));
}

class PokeApiResults {
  final String name;
  final String url;

  PokeApiResults(this.name, this.url);

  PokeApiResults.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        url = json['url'];
}
