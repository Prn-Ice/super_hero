library super_hero;

import 'dart:math';

import 'package:super_hero/src/super_heroes.dart';

// ignore: public_member_api_docs
class SuperHero {
  /// Get a random super-hero name.
  static String random() {
    final numberOfSuperheroes = superheroes.length;
    final randomNumber = Random().nextInt(numberOfSuperheroes);
    return superheroes[randomNumber];
  }
}
