import 'package:flutter_test/flutter_test.dart';

import 'package:unit_tests/imc.dart';

void main() {
  test('Deve efetuar o cálculo do IMC', () {
    final result = calcIMC(1.78, 64);
    expect(result, equals(20.199469763918696));
  });

  group('Exceções de parãmetros: ', () {
    test('Deve lançar uma exceção se altura for < 1', () {
      expect(() => calcIMC(0, 64), throwsA(isA<Exception>()));
    });

    test('Deve lançar uma exceção se peso for < 1', () {
      expect(() => calcIMC(1.78, 0), throwsA(isA<Exception>()));
    });
  });
}
