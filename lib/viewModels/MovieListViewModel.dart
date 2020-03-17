import 'package:flutter/cupertino.dart';
import 'package:mvvmmovie/api/webservice.dart';
import 'package:mvvmmovie/viewModels/MovieViewModel.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyWord) async {
    final results = await Api().fecthMovies(keyWord);

    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();

    print(this.movies);
    notifyListeners();
  }
}
