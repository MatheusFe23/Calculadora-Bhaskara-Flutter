import '../domain/operation.dart';
import '../domain/models/bhaskara_variables.dart';

class CalculatorState {
  final String display;
  final double? accumulator;
  final Operation? pendingOperation;
  final bool isNewNumber;
  final BhaskaraVariables bhaskaraVariables;

  CalculatorState({
    required this.display,
    this.accumulator,
    this.pendingOperation,
    this.isNewNumber = true,
    this.bhaskaraVariables = const BhaskaraVariables(),
  });

  CalculatorState copyWith({
    String? display,
    double? accumulator,
    Operation? pendingOperation,
    bool? isNewNumber,
    BhaskaraVariables? bhaskaraVariables,
  }) {
    return CalculatorState(
      display: display ?? this.display,
      accumulator: accumulator ?? this.accumulator,
      pendingOperation: pendingOperation ?? this.pendingOperation,
      isNewNumber: isNewNumber ?? this.isNewNumber,
      bhaskaraVariables: bhaskaraVariables ?? this.bhaskaraVariables,
    );
  }

  factory CalculatorState.initial() {
    return CalculatorState(display: '0');
  }
}
