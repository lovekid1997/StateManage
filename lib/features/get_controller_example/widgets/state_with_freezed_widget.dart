import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:state_manage/features/get_controller_example/controller/get_controller_with_frezzed.dart';
import 'package:state_manage/features/get_controller_example/state/get_state_with_freezed.dart';
import 'package:state_manage/features/widgets_common/item_list_user_common.dart';
import 'package:state_manage/model/user/user_response.dart';

class StateWithFreezedWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          GetBuilder<GetControllerFreezed>(
            builder: (controller) {
              final GetStateWithFreezed state = controller.state!;
              final bool isLoading = state.data.isLoading;
              final List<DataUser>? listUser = state.data.listUser;

              if (isLoading) {
                return buildLoadingWidget();
              } else {
                if (listUser == null) {
                  return buildFetchNotSuccess();
                } else {
                  return ListItemGet(listUser: listUser);
                }
              }
            },
          ),
          const Divider(),
        ],
      ),
    );
  }

  Expanded buildLoadingWidget() {
    return const Expanded(child: Center(child: CircularProgressIndicator()));
  }

  Expanded buildFetchNotSuccess() {
    return const Expanded(child: Center(child: Text('fetch data not success')));
  }
}

// ignore: must_be_immutable
class ListItemGet extends StatelessWidget {
  final List<DataUser> listUser;

  const ListItemGet({Key? key, required this.listUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: GetControllerFreezed.to.scroll,
        itemBuilder: (context, index) {
          if (index >= listUser.length) {
            return GetBuilder<GetControllerFreezed>(
              builder: (controller) {
                final bool isLoadMore =
                    controller.state?.data.isLoadMore ?? false;
                return isLoadMore
                    ? const SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            );
          }
          final item = listUser[index];
          return ItemListUserCommon(item: item, onTap: () {});
        },
        itemCount: listUser.length + 1,
      ),
    );
  }
}
