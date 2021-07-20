class GetState {
  final List<String> listData;

  GetState(this.listData);
}

class GetData extends GetState {
  final String notify;
  GetData(this.notify, List<String> listData) : super(listData);
}

class GetData1 extends GetState {
  final String notify;
  GetData1(this.notify, List<String> listData) : super(listData);
}
