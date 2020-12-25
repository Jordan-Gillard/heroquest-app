import 'package:flutter/material.dart';
import 'package:hero_quest/components/character_name.dart';
import 'package:hero_quest/components/character_dropdown.dart';

class CharacterStatsPage extends StatefulWidget {
  @override
  _CharacterStatsPageState createState() => _CharacterStatsPageState();
}

class _CharacterStatsPageState extends State<CharacterStatsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Sheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              CharacterName(),
              CharacterDropdown(),
            ],
          ),
        ),
      ),
    );
  }
}
