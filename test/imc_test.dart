import 'package:flutter_test/flutter_test.dart';

import 'package:unit_tests/imc.dart';

void main() {
// Você pode usar as funções setUp() e tearDown() para compartilhar
// código entre testes. O retorno de chamada setUp() será executado antes de cada
// teste em um grupo ou conjunto de testes, e tearDown() será executado depois.
// tearDown() será executado mesmo se um teste falhar, para garantir que ele tenha a
// chance de se limpar.
  setUp(() => null);
  tearDown(() => null);
  setUpAll(() => null);
  tearDownAll(() => null);

  test('Deve efetuar o cálculo do IMC', () {
    final result = calcIMC(1.78, 64);
    expect(result, equals(20.199469763918696));
  });

// Tests can be grouped together using the group() function.
// Each group's description is added to the beginning of its test's descriptions.
  group('Exceções de parãmetros: ', () {
    test('Deve lançar uma exceção se altura for < 1', () {
      expect(() => calcIMC(0, 64), throwsA(isA<Exception>()));
    });

    test('Deve lançar uma exceção se peso for < 1', () {
      expect(() => calcIMC(1.78, 0), throwsA(isA<Exception>()));
    });
  });
}
