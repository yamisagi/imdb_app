import 'package:flutter/material.dart';
import 'package:imdb_test/key/api_key.dart';
import 'package:imdb_test/model/movie_model.dart';
import 'package:imdb_test/product/padding_values.dart';

import 'movie_card.dart';

class ImdbView extends StatefulWidget {
  const ImdbView({
    super.key,
  });

  @override
  State<ImdbView> createState() => _ImdbViewState();
}

class _ImdbViewState extends State<ImdbView> {
  // When this state is called fetchMovies is called once.
  // Otherwise when this state is called again fetchMovies is called again and adding same items to List.

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  List<MovieModel> movies = [];

  fetchMovies() async {
    var data = await IMDBMovieProvider.getJson();
    setState(() {
      List results = data['results'];
      for (var element in results) {
        movies.add(MovieModel.fromJson(element));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: ProductPadding.listViewPadding,
                child: MovieCard(
                  movies: movies,
                  index: index,
                ),
              );
            }),
      ),
    );
  }
}
