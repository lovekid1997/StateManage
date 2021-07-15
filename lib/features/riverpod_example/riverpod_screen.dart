import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:state_manage/features/riverpod_example/riverpod_widgets/riverpod_freezed/riverpod_frezzed_widget.dart';
import 'package:state_manage/features/riverpod_example/riverpod_widgets/riverpod_freezed_hook_widget.dart/riverpod_freezed_hook_widget.dart';
import 'package:state_manage/features/riverpod_example/riverpod_widgets/riverpod_not_freezed/riverpod_not_freezed_widget.dart';

class RiverpodScreen extends StatefulWidget {
  const RiverpodScreen({Key? key}) : super(key: key);

  @override
  _RiverpodScreenState createState() => _RiverpodScreenState();
}

class _RiverpodScreenState extends State<RiverpodScreen> {
  @override
  Widget build(BuildContext context) {
    log('build RiverpodScreen');
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Not frezzed'),
              ),
              Tab(
                child: Text('Frezzed'),
              ),
              Tab(
                child: Text('Frezzed + Flutter hook'),
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: SizedBox.expand(
              child: TabBarView(
            children: [
              RiverPodNotFrezzedWidget(),
              RiverPodFreezedWidget(),
              RiverPodFreezedHookWidget(),
            ],
          )),
        ),
      ),
    );
  }
}
