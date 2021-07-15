import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage/features/riverpod_example/riverpod_provider/riverpod_provider_not_frezzed.dart';
import 'package:state_manage/features/riverpod_example/riverpod_state/riverpod_state_not_freezed.dart';
import 'package:state_manage/features/riverpod_example/riverpod_widgets/riverpod_not_freezed/riverpod_item_list_widget.dart';
import 'package:state_manage/model/user/user_response.dart';
import 'package:flutter/material.dart';

class RiverPodNotFrezzedWidget extends StatefulWidget {
  const RiverPodNotFrezzedWidget();

  @override
  _RiverPodNotFrezzedWidgetState createState() =>
      _RiverPodNotFrezzedWidgetState();
}

class _RiverPodNotFrezzedWidgetState extends State<RiverPodNotFrezzedWidget>
    with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    log('build RiverPodNotFrezzedWidget');
    return Consumer(
      builder: (context, watch, child) {
        final RiverPodState state = watch(riverPodNotifierProvider);
        if (state is RiverPodLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is RiverPodErrorState) {
          final String error = state.error;
          return Center(
            child: Text(error),
          );
        }

        if (state is RiverPodLoadedDataState) {
          final List<DataUser> listUser = state.data;
          return ListView.separated(
            padding: const EdgeInsets.all(10),
            controller: _scrollController,
            itemBuilder: (context, index) {
              if (index >= listUser.length) {
                return const SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Center(child: CircularProgressIndicator()));
              }
              final DataUser item = listUser[index];
              return RiverPodItemListWidget(
                item: item,
                onTap: () {
                  context
                      .read(riverPodNotifierProvider.notifier)
                      .favoriteUser(dataUser: item);
                },
              );
            },
            itemCount: listUser.length,
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  height: 1,
                  thickness: 1,
                ),
              );
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read(riverPodNotifierProvider.notifier).fetchMore();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
