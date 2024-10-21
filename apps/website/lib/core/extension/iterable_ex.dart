// cf. https://github.com/dart-lang/sdk/issues/49900#issuecomment-1236913547
extension Intersperse<T> on Iterable<T> {
  Iterable<T> intersperse(T separator) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield separator;
        yield iterator.current;
      }
    }
  }
}
