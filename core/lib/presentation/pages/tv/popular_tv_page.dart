import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopularTvPage extends StatefulWidget {
  const PopularTvPage({
    super.key,
  });

  @override
  State<PopularTvPage> createState() => _PopularTvPageState();
}

class _PopularTvPageState extends State<PopularTvPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() =>
        Provider.of<TvSeriesNotifier>(context, listen: false).getPopularTv());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular TV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<TvSeriesNotifier>(
          builder: (context, data, child) {
            final state = data.popularState;

            if (state == RequestState.Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state == RequestState.Loaded) {
              return ListView.builder(
                itemCount: data.popular.length,
                itemBuilder: (context, index) {
                  final tv = data.popular[index];
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
