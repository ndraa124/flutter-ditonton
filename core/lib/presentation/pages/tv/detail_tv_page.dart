import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailTvPage extends StatefulWidget {
  final int id;

  const DetailTvPage({
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  State<DetailTvPage> createState() => _DetailTvPageState();
}

class _DetailTvPageState extends State<DetailTvPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<TvSeriesNotifier>(context, listen: false)
          .getTvDetail(widget.id);
      Provider.of<TvSeriesNotifier>(context, listen: false)
          .loadWatchlistStatus(widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TvSeriesNotifier>(
        builder: (context, data, child) {
          if (data.detailState == RequestState.Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (data.detailState == RequestState.Loaded) {
            final detail = data.detail;

            return SafeArea(
              child: TvDetailContent(
                detail,
                data.recommended,
                data.isAddedToWatchlist,
              ),
            );
          } else {
            return Text(data.message);
          }
        },
      ),
    );
  }
}
