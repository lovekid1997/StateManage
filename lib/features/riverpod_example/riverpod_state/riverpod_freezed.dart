import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_manage/model/user/user_response.dart';

part 'riverpod_freezed.freezed.dart';

// @freezed
// class RiverPodStateWithFrezzed with _$RiverPodStateWithFrezzed {
//   factory RiverPodStateWithFrezzed({List<DataUser>? listUsers}) = Data;
// }

@freezed
class RiverPodStateFrezzed with _$RiverPodStateFrezzed {
  const factory RiverPodStateFrezzed.loaded(List<DataUser>? listUsers) = Loaded;
  const factory RiverPodStateFrezzed.loading() = Loading;
  const factory RiverPodStateFrezzed.error(String error) = Error;
}
