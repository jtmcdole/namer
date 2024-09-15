import 'dart:math' as math;

import 'package:namer/namer.dart' as namer;
import 'package:test/test.dart';

void main() {
  group('silly', () {
    late FakeRandom random;
    setUp(() {
      random = FakeRandom();
    });

    test('animals with no adjectives, no verbs', () {
      expect(
          namer.animal(adjectives: 0, verbs: 0, random: random), 'abyssinian');
    });
    test('animals with some adjectives, no verbs', () {
      expect(namer.animal(adjectives: 2, verbs: 0, random: random),
          'abaft abaft abyssinian');
    });
    test('animals with no adjectives, some verbs', () {
      expect(namer.animal(adjectives: 0, verbs: 2, random: random),
          'abasing abasing abyssinian');
    });
    test('animals with some adjectives, some verbs', () {
      expect(namer.animal(adjectives: 2, verbs: 2, random: random),
          'abasing abasing abaft abaft abyssinian');
    });
  });
}

class FakeRandom implements math.Random {
  bool stubBoolean = false;
  double stubDouble = 0.0;
  int stubInt = 1;

  @override
  bool nextBool() => stubBoolean;

  @override
  double nextDouble() => stubDouble;

  @override
  int nextInt(int max) => stubInt % max;
}
