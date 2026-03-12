import 'dart:math';
import '../domain/models/complex_number.dart';
import '../domain/models/bhaskara_result.dart';

class BhaskaraService {
  BhaskaraResult calculateRoots(double a, double b, double c) {
    if (a == 0) {
      return BhaskaraResult.error('A cannot be 0');
    }

    final delta = (b * b) - (4 * a * c);

    if (delta >= 0) {
      final sqrtDelta = sqrt(delta);
      final r1 = (-b + sqrtDelta) / (2 * a);
      final r2 = (-b - sqrtDelta) / (2 * a);
      return BhaskaraResult.success(
        ComplexNumber(r1, 0),
        ComplexNumber(r2, 0),
        true,
      );
    } else {
      final sqrtAbsDelta = sqrt(delta.abs());
      final realPart = -b / (2 * a);
      final imaginaryPart = sqrtAbsDelta / (2 * a);
      return BhaskaraResult.success(
        ComplexNumber(realPart, imaginaryPart.abs()),
        ComplexNumber(realPart, -imaginaryPart.abs()),
        false,
      );
    }
  }
}
