// widgets/movie_widget.dart
import 'package:flutter/material.dart';
import '../model/movie_model.dart';
import '../screens/movie_detail.dart';

class MovieWidget extends StatelessWidget {
  final Movie movie;

  const MovieWidget({Key? key, required this.movie}) : super(key: key);

  void _navigateToDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MovieDetail(movie: movie)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetail(context),
      child: Container(
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            "https://image.tmdb.org/t/p/original/${movie.backDropPath}",
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
