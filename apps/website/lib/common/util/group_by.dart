// キーごとにリスト分けをし、Mapで返す

Map<K, List<T>> groupBy<T, K>(Iterable<T> items, K Function(T) key) {
  return items.fold<Map<K, List<T>>>(
    {},
    (map, item) => map..putIfAbsent(key(item), () => []).add(item),
  );
}
