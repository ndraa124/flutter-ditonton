import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTvPage extends StatefulWidget {
  const HomeTvPage({Key? key}) : super(key: key);

  @override
  State<HomeTvPage> createState() => _HomeTvPageState();
}

class _HomeTvPageState extends State<HomeTvPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => Provider.of<TvSeriesNotifier>(context, listen: false)
        ..getOnAiringTv()
        ..getPopularTv()
        ..getTopRatedTv(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TV Series'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, SEARCH_TV_ROUTE),
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubHeading(
                title: 'On Airing',
                isPressed: true,
                onTap: () => Navigator.pushNamed(context, ON_AIRING_TV_ROUTE),
              ),
              Consumer<TvSeriesNotifier>(builder: (context, data, child) {
                final state = data.onAiringState;
                if (state == RequestState.Loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state == RequestState.Loaded) {
                  return TvSeriesList(data.onAiring, false);
                } else {
                  return const Text('Failed');
                }
              }),
              SubHeading(
                title: 'Popular',
                isPressed: true,
                onTap: () => Navigator.pushNamed(context, POPULAR_TV_ROUTE),
              ),
              Consumer<TvSeriesNotifier>(builder: (context, data, child) {
                final state = data.popularState;
                if (state == RequestState.Loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state == RequestState.Loaded) {
                  return TvSeriesList(data.popular, false);
                } else {
                  return const Text('Failed');
                }
              }),
              SubHeading(
                title: 'Top Rated',
                isPressed: true,
                onTap: () => Navigator.pushNamed(context, TOP_RATED_TV_ROUTE),
              ),
              Consumer<TvSeriesNotifier>(builder: (context, data, child) {
                final state = data.topRatedState;
                if (state == RequestState.Loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state == RequestState.Loaded) {
                  return TvSeriesList(data.topRated, false);
                } else {
                  return const Text('Failed');
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
