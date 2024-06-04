// screens/movie_detail.dart
import 'package:flutter/material.dart';
import '../model/movie_model.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;

  const MovieDetail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://image.tmdb.org/t/p/original/${movie.posterPath}"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.overview,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
