import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/user/user_response.dart';
import '../../../widgets_common/item_list_user_common.dart';
import '../../riverpod_provider/riverpod_provider_freezed.dart';
import '../../riverpod_state/riverpod_freezed.dart';

class RiverPodFreezedWidget extends StatefulWidget {
  const RiverPodFreezedWidget();

  @override
  _RiverPodFreezedWidgetState createState() => _RiverPodFreezedWidgetState();
}

class _RiverPodFreezedWidgetState extends State<RiverPodFreezedWidget>
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
    log('build RiverPodFreezedWidget');
    return Consumer(
      builder: (context, watch, child) {
        final RiverPodStateFrezzed state =
            watch(riverPodNotifierProviderFrezzed);
        final bool isFetchMore =
            watch(riverPodNotifierProviderFrezzed.notifier).isFetchMore;
        return state.when(
          loaded: (listUsers) => ListView.separated(
            padding: const EdgeInsets.all(10),
            controller: _scrollController,
            itemBuilder: (context, index) {
              if (index >= listUsers!.length) {
                return const SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Center(child: CircularProgressIndicator()));
              }
              final DataUser item = listUsers[index];
              return ItemListUserCommon(
                item: item,
                onTap: () {
                  context
                      .read(riverPodNotifierProviderFrezzed.notifier)
                      .favoriteUser(dataUser: item);
                },
              );
            },
            itemCount: isFetchMore ? listUsers!.length + 1 : listUsers!.length,
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  height: 1,
                  thickness: 1,
                ),
              );
            },
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error) => Center(
            child: Text(error),
          ),
        );
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
      context.read(riverPodNotifierProviderFrezzed.notifier).fetchMore();
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
