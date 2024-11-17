final _day1Start = DateTime(2024, 11, 21);
final _day2Start = DateTime(2024, 11, 22);

enum SessionDate {
  day1,
  day2;

  /// 与えられた[DateTime]から[SessionDate]を返すメソッド。
  ///
  /// セッションの日時なので、日付の境界値などは考慮していない。
  static SessionDate? fromDateTime(DateTime dateTime) {
    if (dateTime.isAfter(_day1Start) && dateTime.isBefore(_day2Start)) {
      return SessionDate.day1;
    } else if (dateTime.isAfter(_day2Start)) {
      return SessionDate.day2;
    }
    return null;
  }

  bool get isDay1 => this == day1;
}
