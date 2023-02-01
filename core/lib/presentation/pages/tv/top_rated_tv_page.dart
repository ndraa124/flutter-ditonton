import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopRatedTvPage extends StatefulWidget {
  const TopRatedTvPage({
    super.key,
  });

  @override
  State<TopRatedTvPage> createState() => _TopRatedTvPageState();
}

class _TopRatedTvPageState extends State<TopRatedTvPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => Provider.of<TvSeriesNotifier>(context, listen: false)
        ..getTopRatedTv(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated TV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<TvSeriesNotifier>(
          builder: (context, data, child) {
            final state = data.topRatedState;

            if (state == RequestState.Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state == RequestState.Loaded) {
              return ListView.builder(
                itemCount: data.topRated.length,
                itemBuilder: (context, index) {
                  final tv = data.topRated[index];
                  return TvCardList(tv);
                },
              );
            } else {
              return Center(
                key: const Key('error_message'),
                child: Text(data.message),
              );
            }
          },
        ),
      ),
    );
  }
}
