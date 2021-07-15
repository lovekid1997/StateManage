import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage/features/riverpod_example/riverpod_provider/riverpod_provider_freezed.dart';
import 'package:state_manage/features/riverpod_example/riverpod_state/riverpod_freezed.dart';
import 'package:state_manage/features/riverpod_example/riverpod_widgets/riverpod_not_freezed/riverpod_item_list_widget.dart';
import 'package:state_manage/model/user/user_response.dart';

class RiverPodFreezedHookWidget extends StatefulWidget {
  const RiverPodFreezedHookWidget();

  @override
  _RiverPodFreezedWidgetState createState() => _RiverPodFreezedWidgetState();
}

class _RiverPodFreezedWidgetState extends State<RiverPodFreezedHookWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    log('build RiverPodFreezedHookWidget');
    return const BodyWidget();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class BodyWidget extends HookWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scrollController = useScrollController();
    useEffect(() {
      _scrollController.addListener(() => _onScroll(_scrollController));
    });
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
              return RiverPodItemListWidget(
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

  void _onScroll(ScrollController scrollController) {
    if (_isBottom(scrollController)) {
      final context = useContext();
      context.read(riverPodNotifierProviderFrezzed.notifier).fetchMore();
    }
  }

  bool _isBottom(ScrollController scrollController) {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
