import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tvseries/tvseries.dart';

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
    BlocProvider.of<TvBloc>(context).add(PopularTvEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular TV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TvBloc, TvState>(
          builder: (context, state) {
            if (state.popularState == RequestState.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.popularState == RequestState.success) {
              return ListView.builder(
                itemCount: state.popularList.length,
                itemBuilder: (context, index) {
                  final tv = state.popularList[index];
                  return TvCardList(tv);
                },
              );
            } else if (state.popularState == RequestState.empty) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return Center(
                child: Text(state.message),
              );
            }
          },
        ),
      ),
    );
  }
}
