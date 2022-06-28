import 'package:flutter/material.dart';
import 'package:imdb_test/model/movie_model.dart';
import 'package:imdb_test/product/padding_values.dart';

class MovieListTile extends StatelessWidget {
  const MovieListTile({
    Key? key,
    required this.movies,
    required this.index,
  }) : super(key: key);

  final List<MovieModel> movies;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: movies[index].adult
          ? const Icon (Icons.eighteen_up_rating, color: Colors.black)
          : const Icon(Icons.family_restroom_sharp, color: Colors.black),
      title: Center(
        child: Text(
          movies[index].title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[700]),
        ),
      ),
      subtitle: Padding(
        padding: ProductPadding.subtitlePadding,
        child: Text(
          movies[index].overview,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
