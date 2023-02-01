import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SeasonTvPage extends StatefulWidget {
  final TvSeriesDetail tvSeries;

  const SeasonTvPage(
    this.tvSeries, {
    super.key,
  });

  @override
  State<SeasonTvPage> createState() => _SeasonTvPageState();
}

class _SeasonTvPageState extends State<SeasonTvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Seasons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: widget.tvSeries.seasons.length,
          itemBuilder: (context, index) {
            final season = widget.tvSeries.seasons[index];
            return SeasonCardList(widget.tvSeries.name, season);
          },
        ),
      ),
    );
  }
}
