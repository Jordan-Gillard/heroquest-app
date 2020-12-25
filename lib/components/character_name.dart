import 'package:flutter/material.dart';

class CharacterName extends StatefulWidget {
  @override
  _CharacterNameState createState() => _CharacterNameState();
}

class _CharacterNameState extends State<CharacterName> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: "Name",
      ),
    );
  }
}
