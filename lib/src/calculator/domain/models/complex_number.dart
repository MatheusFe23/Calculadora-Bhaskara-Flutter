class ComplexNumber {
  final double real;
  final double imaginary;

  const ComplexNumber(this.real, this.imaginary);

  @override
  String toString() {
    if (imaginary == 0) {
      if (real == real.truncateToDouble()) {
        return real.toInt().toString();
      }
      return real
          .toStringAsFixed(2)
          .replaceAll(RegExp(r'0*$'), '')
          .replaceAll(RegExp(r'\.$'), '');
    }

    final realStr = real == 0
        ? ''
        : (real == real.truncateToDouble()
              ? real.toInt().toString()
              : real.toStringAsFixed(2));
    final imaginaryStr = imaginary.abs() == imaginary.abs().truncateToDouble()
        ? imaginary.abs().toInt().toString()
        : imaginary.abs().toStringAsFixed(2);

    if (real == 0) {
      return imaginary < 0 ? '-${imaginaryStr}i' : '${imaginaryStr}i';
    }

    final sign = imaginary < 0 ? '-' : '+';
    return '$realStr $sign ${imaginaryStr}i';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ComplexNumber &&
        other.real == real &&
        other.imaginary == imaginary;
  }

  @override
  int get hashCode => real.hashCode ^ imaginary.hashCode;
}
