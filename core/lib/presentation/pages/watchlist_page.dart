import 'package:core/core.dart';
import 'package:flutter/material.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Movies'),
              Tab(text: 'TV Series'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            WatchlistMoviesPage(),
            WatchlistTvPage(),
          ],
        ),
      ),
    );
  }
}
