class SafeMap {
  final dynamic value;
  SafeMap(this.value);
  SafeMap operator [](dynamic key) => SafeMap(
        value is Map ? value[key] : null,
      );
  @override
  String toString() => '<SafeMap:$value>';
}
