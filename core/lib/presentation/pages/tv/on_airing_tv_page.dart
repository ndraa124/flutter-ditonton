import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnAiringTvPage extends StatefulWidget {
  const OnAiringTvPage({
    super.key,
  });

  @override
  State<OnAiringTvPage> createState() => _OnAiringTvPageState();
}

class _OnAiringTvPageState extends State<OnAiringTvPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => Provider.of<TvSeriesNotifier>(context, listen: false)
        ..getOnAiringTv(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Airing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<TvSeriesNotifier>(
          builder: (context, data, child) {
            final state = data.onAiringState;

            if (state == RequestState.Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state == RequestState.Loaded) {
              return ListView.builder(
                itemCount: data.onAiring.length,
                itemBuilder: (context, index) {
                  final tv = data.onAiring[index];
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
