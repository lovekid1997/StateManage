import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:state_manage/pigeon/pigeon_generate.dart';

const String methodChannelName = 'com.test.channel/method';
const String basicMessageChannel = 'com.test.channel/basicMessageChannel';

class MethodChannelScreen extends StatefulWidget {
  const MethodChannelScreen({Key? key}) : super(key: key);

  @override
  _MethodChannelScreenState createState() => _MethodChannelScreenState();
}

class _MethodChannelScreenState extends State<MethodChannelScreen> {
  String testPigeon = '';
  String testMethodChannel = '';
  String testBasicMessageChannel = '';
  String testEvenChannel = '';
  StreamSubscription? streamSubscription;
  static const MethodChannel defaultPlatform = MethodChannel(methodChannelName);

  static const BasicMessageChannel basicMessagePlatform =
      BasicMessageChannel(basicMessageChannel, JSONMessageCodec());

  static const EventChannel stream = EventChannel('eventStream');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///pigeon
                Text('pigeon: $testPigeon'),
                TextButton(
                    onPressed: () async {
                      final Api api = Api();
                      final GetChannel result = await api.getChannel();
                      setState(() {
                        testPigeon = result.result ?? '';
                      });
                    },
                    child: const Text('test pigeon')),
                const Divider(),

                /// method channel
                Text('method channel: $testMethodChannel'),
                TextButton(
                    onPressed: () {
                      getMethodChannel();
                    },
                    child: const Text('test method channel')),
                const Divider(),

                /// basic message channel
                Text('basic message channel: $testBasicMessageChannel'),
                TextButton(
                    onPressed: () {
                      getBasicMessageChannel();
                    },
                    child: const Text('test basic message channel')),
                const Divider(),

                /// event channel
                Text('event channel: $testEvenChannel'),
                TextButton(
                    onPressed: () {
                      getEventChannel();
                    },
                    child: const Text('test basic message channel')),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> getMethodChannel() async {
    final String result =
        await defaultPlatform.invokeMethod('getDevice', {'type': "MODEL"});

    setState(() {
      testMethodChannel = result;
    });
  }

  Future<void> getBasicMessageChannel() async {
    final result = await basicMessagePlatform.send({'message': 'test message'});

    setState(() {
      testBasicMessageChannel = result['phone'];
    });
  }

  void getEventChannel() {
    streamSubscription = stream.receiveBroadcastStream().listen((data) {
      setState(() {
        testEvenChannel = data.toString();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (streamSubscription != null) {
      streamSubscription?.cancel();
    }
  }
}
