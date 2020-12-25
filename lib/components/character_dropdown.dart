import 'package:flutter/material.dart';
import 'package:hero_quest/constants/constants.dart';

class CharacterDropdown extends StatefulWidget {
  @override
  _CharacterDropdownState createState() => _CharacterDropdownState();
}

class _CharacterDropdownState extends State<CharacterDropdown> {
  var dropdownValue = availableCharacters[0];

  @override
  Widget build(BuildContext context) {
    List<Widget> characterTextWidgets = [];
    for (String character in availableCharacters) {
      characterTextWidgets.add(Text(character));
    }
    return DropdownButton(
      value: dropdownValue,
        icon: Icon(Icons.accessibility_new),
        iconSize: 24,
        elevation: 16,
        onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
        },
        items: availableCharacters
            .map<DropdownMenuItem<String>>((String character) {
          return DropdownMenuItem<String>(
            value: character,
            child: Text(character),
          );
        },).toList()
    );
  }
}
