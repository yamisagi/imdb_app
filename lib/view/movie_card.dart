import 'package:flutter/material.dart';
import 'package:imdb_test/core/movie_list_tile.dart';
import 'package:imdb_test/key/api_key.dart';
import 'package:imdb_test/model/movie_model.dart';

class MovieCard extends StatelessWidget {
  final List<MovieModel> movies;
  final int index;
  const MovieCard({
    Key? key,
    required this.movies,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        Card(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(
                  IMDBMovieProvider.imagePathPrefix + movies[index].posterPath,
                ),
                fit: BoxFit.fill,
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                    offset: Offset(1.0, 3.0)),
              ],
            ),
          ),
        ),
        MovieListTile(movies: movies, index: index),
        Divider(color: Colors.grey.shade500),
      ]),
    );
  }
}
