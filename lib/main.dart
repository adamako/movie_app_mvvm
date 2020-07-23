import 'package:flutter/material.dart';
import 'package:mvvmmovie/pages/movieListPage.dart';
import 'package:mvvmmovie/viewModels/MovieListViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        ));
  }
}
