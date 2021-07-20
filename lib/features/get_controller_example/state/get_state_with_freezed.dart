import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_manage/model/user/user_response.dart';
part 'get_state_with_freezed.freezed.dart';

@freezed
class GetStateFreezedData with _$GetStateFreezedData {
  const factory GetStateFreezedData({
    @Default(false) bool isLoading,
    List<DataUser>? listUser,
    @Default(false) bool isLoadMore,
  }) = DataGetFreezed;
}

@freezed
class GetStateWithFreezed with _$GetStateWithFreezed {
  const factory GetStateWithFreezed.init(DataGetFreezed data) = Initial;
  const factory GetStateWithFreezed.loaded(DataGetFreezed data) = Loaded;
  const factory GetStateWithFreezed.loading(DataGetFreezed data) = Loading;
  const factory GetStateWithFreezed.error(DataGetFreezed data,
      [String? error]) = Error;
}
