import 'package:flutter/material.dart';
import 'package:super_hero/super_hero.dart';

void main() => runApp(const SuperHeroIllustrator());

class SuperHeroIllustrator extends StatefulWidget {
  const SuperHeroIllustrator({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SuperHeroIllustratorState();
}

class _SuperHeroIllustratorState extends State<SuperHeroIllustrator> {
  String _superHeroName = SuperHero.random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Super Hero Illustrator'),
        ),
        body: Center(
          child: Text(
            _superHeroName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.skip_next),
          onPressed: () {
            setState(() {
              _superHeroName = SuperHero.random();
            });
          },
        ),
      ),
    );
  }
}
