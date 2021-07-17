
import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class Api {
  GetChannel getChannel();
}
///flutter pub run pigeon --input lib/pigeon/channel_pigeon.dart --dart_out lib/pigeon/pigeon_generate.dart --java_out ./android/app/src/main/java/pigeon/Pigeon.java --java_package "com.example.state_manage"
class GetChannel {
  String? result;
}
