class BhaskaraVariables {
  final double? a;
  final double? b;
  final double? c;

  const BhaskaraVariables({this.a, this.b, this.c});

  bool get isReady => a != null && b != null && c != null;

  BhaskaraVariables copyWith({double? a, double? b, double? c}) {
    return BhaskaraVariables(a: a ?? this.a, b: b ?? this.b, c: c ?? this.c);
  }

  BhaskaraVariables clear() {
    return const BhaskaraVariables();
  }
}
