import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/src/models/cat_model.dart';

import '../ui/pages/detail_page/detail_page.dart';

class SearchCats extends SearchDelegate<CatModel> {
  final List<CatModel> catModel;
  final List<CatModel> catSuggestions;

  SearchCats({required this.catModel, required this.catSuggestions});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<CatModel> allCats = catModel
        .where((cat) => cat.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
        itemCount: allCats.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                            title: allCats[index].name,
                            description: allCats[index].description,
                            url: allCats[index].image.url,
                            countryCode: allCats[index].countryCode,
                            adaptabilidad:
                                allCats[index].adaptability.toString(),
                            inteligencia:
                                allCats[index].intelligence.toString(),
                            tiempoDeVida: allCats[index].lifeSpan)));
              },
              child: ListTile(
                title: Text(allCats[index].name),
              ),
            ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<CatModel> catsSuggestionsLists = catSuggestions
        .where((cat) => cat.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
        itemCount: catsSuggestionsLists.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                            title: catsSuggestionsLists[index].name,
                            description:
                                catsSuggestionsLists[index].description,
                            url: catsSuggestionsLists[index].image.url,
                            countryCode:
                                catsSuggestionsLists[index].countryCode,
                            adaptabilidad: catsSuggestionsLists[index]
                                .adaptability
                                .toString(),
                            inteligencia: catsSuggestionsLists[index]
                                .intelligence
                                .toString(),
                            tiempoDeVida:
                                catsSuggestionsLists[index].lifeSpan)));
              },
              child: ListTile(
                title: Text(catsSuggestionsLists[index].name),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ));
  }
}
