import 'complex_number.dart';

class BhaskaraResult {
  final ComplexNumber? root1;
  final ComplexNumber? root2;
  final bool isReal;
  final String? error;

  const BhaskaraResult({
    this.root1,
    this.root2,
    this.isReal = true,
    this.error,
  });

  bool get hasError => error != null;

  factory BhaskaraResult.error(String message) {
    return BhaskaraResult(error: message, isReal: false);
  }

  factory BhaskaraResult.success(
    ComplexNumber r1,
    ComplexNumber r2,
    bool real,
  ) {
    return BhaskaraResult(root1: r1, root2: r2, isReal: real);
  }
}
