import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'tv_detail_page_test.mocks.dart';

@GenerateMocks([TvSeriesNotifier])
void main() {
  late MockTvSeriesNotifier mockNotifier;

  setUp(() {
    mockNotifier = MockTvSeriesNotifier();
  });

  Widget makeTestableWidget(Widget body) {
    return ChangeNotifierProvider<TvSeriesNotifier>.value(
      value: mockNotifier,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets('Watchlist button should display add icon when movie not added to watchlist', (widget) async {
    when(mockNotifier.detailState).thenReturn(RequestState.Loaded);
    when(mockNotifier.detail).thenReturn(tSeriesDetail);
    when(mockNotifier.recommendedState).thenReturn(RequestState.Loaded);
    when(mockNotifier.recommended).thenReturn(tSeriesList);
    when(mockNotifier.isAddedToWatchlist).thenReturn(false);

    final watchlistButtonIcon = find.byIcon(Icons.add);

    await widget.pumpWidget(makeTestableWidget(const DetailTvPage(id: 1)));

    expect(watchlistButtonIcon, findsOneWidget);
  });

  testWidgets('Watchlist button should display check icon when movie is added to watchlist', (widget) async {
    when(mockNotifier.detailState).thenReturn(RequestState.Loaded);
    when(mockNotifier.detail).thenReturn(tSeriesDetail);
    when(mockNotifier.recommendedState).thenReturn(RequestState.Loaded);
    when(mockNotifier.recommended).thenReturn(tSeriesList);
    when(mockNotifier.isAddedToWatchlist).thenReturn(true);

    final watchlistButtonIcon = find.byIcon(Icons.check);

    await widget.pumpWidget(makeTestableWidget(const DetailTvPage(id: 1)));

    expect(watchlistButtonIcon, findsOneWidget);
  });

  testWidgets('Watchlist button should display SnackBar when added to watchlist', (widget) async {
    when(mockNotifier.detailState).thenReturn(RequestState.Loaded);
    when(mockNotifier.detail).thenReturn(tSeriesDetail);
    when(mockNotifier.recommendedState).thenReturn(RequestState.Loaded);
    when(mockNotifier.recommended).thenReturn(tSeriesList);
    when(mockNotifier.isAddedToWatchlist).thenReturn(false);
    when(mockNotifier.watchlistMessage).thenReturn(watchlistAddSuccess);

    final watchlistButton = find.byType(ElevatedButton);

    await widget.pumpWidget(makeTestableWidget(const DetailTvPage(id: 1)));

    expect(find.byIcon(Icons.add), findsOneWidget);

    await widget.tap(watchlistButton);
    await widget.pump();

    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text(watchlistAddSuccess), findsOneWidget);
  });

  testWidgets('Watchlist button should display AlertDialog when add to watchlist failed', (widget) async {
    when(mockNotifier.detailState).thenReturn(RequestState.Loaded);
    when(mockNotifier.detail).thenReturn(tSeriesDetail);
    when(mockNotifier.recommendedState).thenReturn(RequestState.Loaded);
    when(mockNotifier.recommended).thenReturn(tSeriesList);
    when(mockNotifier.isAddedToWatchlist).thenReturn(false);
    when(mockNotifier.watchlistMessage).thenReturn('Failed');

    final watchlistButton = find.byType(ElevatedButton);

    await widget.pumpWidget(makeTestableWidget(const DetailTvPage(id: 1)));

    expect(find.byIcon(Icons.add), findsOneWidget);

    await widget.tap(watchlistButton);
    await widget.pump();

    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text('Failed'), findsOneWidget);
  });
}
