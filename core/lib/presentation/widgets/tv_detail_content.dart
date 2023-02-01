import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class TvDetailContent extends StatefulWidget {
  final TvSeriesDetail tvDetail;
  final List<TvSeries> recommendations;
  final bool isAddedWatchlist;

  const TvDetailContent(
    this.tvDetail,
    this.recommendations,
    this.isAddedWatchlist, {
    Key? key,
  }) : super(key: key);

  @override
  State<TvDetailContent> createState() => _TvDetailContentState();
}

class _TvDetailContentState extends State<TvDetailContent> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: '$BASE_IMAGE_URL${widget.tvDetail.posterPath}',
          width: screenWidth,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Container(
          margin: const EdgeInsets.only(top: 48 + 8),
          child: DraggableScrollableSheet(
            minChildSize: 0.25,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: kRichBlack,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.tvDetail.name,
                              style: kHeading5,
                            ),
                            ElevatedButton(
                              onPressed: () => _addToWatchlist(),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  widget.isAddedWatchlist
                                      ? const Icon(Icons.check)
                                      : const Icon(Icons.add),
                                  const Text('Watchlist'),
                                ],
                              ),
                            ),
                            Text(_showGenres(widget.tvDetail.genres)),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: widget.tvDetail.voteAverage / 2,
                                  itemCount: 5,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: kMikadoYellow,
                                  ),
                                  itemSize: 24,
                                ),
                                Text(
                                  widget.tvDetail.voteAverage
                                      .toStringAsPrecision(2),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Overview',
                              style: kHeading6,
                            ),
                            Text(widget.tvDetail.overview),
                            const SizedBox(height: 16),
                            widget.tvDetail.seasons.length > 1
                                ? SubHeading(
                                    title: 'Current Season',
                                    isPressed: true,
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        SEASON_TV_ROUTE,
                                        arguments: widget.tvDetail,
                                      );
                                    },
                                  )
                                : const SubHeading(
                                    title: 'Current Season',
                                    isPressed: false,
                                  ),
                            SeasonCardList(
                              widget.tvDetail.name,
                              widget.tvDetail
                                  .seasons[widget.tvDetail.seasons.length - 1],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Recommendations',
                              style: kHeading6,
                            ),
                            Consumer<TvSeriesNotifier>(
                                builder: (context, data, child) {
                              final state = data.recommendedState;

                              if (state == RequestState.Loading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state == RequestState.Loaded) {
                                return TvSeriesList(data.recommended, true);
                              } else {
                                return const Text('Failed');
                              }
                            }),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.white,
                        height: 4,
                        width: 48,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: kRichBlack,
            foregroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],
    );
  }

  String _showGenres(List<Genre> genres) {
    String result = '';
    for (var genre in genres) {
      result += '${genre.name}, ';
    }

    if (result.isEmpty) {
      return result;
    }

    return result.substring(0, result.length - 2);
  }

  void _addToWatchlist() async {
    if (!widget.isAddedWatchlist) {
      await Provider.of<TvSeriesNotifier>(context, listen: false)
          .addWatchlist(widget.tvDetail);
    } else {
      await Provider.of<TvSeriesNotifier>(context, listen: false)
          .removeFromWatchlist(widget.tvDetail);
    }

    _showMessage();
  }

  void _showMessage() {
    if (!mounted) return;

    final message =
        Provider.of<TvSeriesNotifier>(context, listen: false).watchlistMessage;

    if (message == watchlistAddSuccess || message == watchlistRemoveSuccess) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(message),
          );
        },
      );
    }
  }
}
