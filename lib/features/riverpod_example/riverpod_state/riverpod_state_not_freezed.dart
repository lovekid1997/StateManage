import 'package:equatable/equatable.dart';
import '../../../model/user/user_response.dart';

class RiverPodState extends Equatable {
  final List<DataUser>? listUsers;

  const RiverPodState({this.listUsers});

  @override
  List<Object?> get props => [listUsers];
}

class RiverPodLoadingState extends RiverPodState {
  @override
  List<Object?> get props => [];
}

class RiverPodErrorState extends RiverPodState {
  final String error;
  const RiverPodErrorState(this.error);
  @override
  List<Object?> get props => [error];
}

class RiverPodLoadedDataState extends RiverPodState {
  final List<DataUser> data;
  const RiverPodLoadedDataState(this.data) : super(listUsers: data);

  @override
  List<Object?> get props => [listUsers];
}
