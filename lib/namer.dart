import 'dart:math';

import 'src/adjectives.dart' as data;
import 'src/animals.dart' as data;
import 'src/nouns.dart' as data;
import 'src/verbs.dart' as data;

final _globalRandom = Random();

/// Generate a random animal name with optional [adjectives] and [verbs].
String animal({
  int adjectives = 1,
  int verbs = 0,
  Random? random,
}) {
  random ??= _globalRandom;

  final buffer = StringBuffer();

  for (int i = 0; i < verbs; i++) {
    buffer
      ..write(data.verbs[random.nextInt(data.verbs.length)])
      ..write(' ');
  }
  for (int i = 0; i < adjectives; i++) {
    buffer
      ..write(data.adjectives[random.nextInt(data.adjectives.length)])
      ..write(' ');
  }
  buffer.write(data.animals[random.nextInt(data.animals.length)]);
  return buffer.toString();
}

/// Generate a random noun with optional [adjectives] and [verbs].
String generic({
  int adjectives = 1,
  int verbs = 0,
  Random? random,
}) {
  random ??= _globalRandom;

  final buffer = StringBuffer();

  for (int i = 0; i < verbs; i++) {
    buffer
      ..write(data.verbs[random.nextInt(data.verbs.length)])
      ..write(' ');
  }
  for (int i = 0; i < adjectives; i++) {
    buffer
      ..write(data.adjectives[random.nextInt(data.adjectives.length)])
      ..write(' ');
  }
  buffer.write(data.nouns[random.nextInt(data.nouns.length)]);
  return buffer.toString();
}
