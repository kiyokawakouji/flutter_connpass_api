 // レスポンス用のデータclassを定義する
 // ここを@freezedに置き換える
 // connpassrepositoryをfreezedで作成

class ConnpassRepository {
  final int resultsReturned;
  final int resultsAvailable;
  final int resultsStart;
  final List<EventRepository> events;

  ConnpassRepository({
    this.resultsReturned,
    this.resultsAvailable,
    this.resultsStart,
    this.events
  });

