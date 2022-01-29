import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('This is a tile'),
      trailing: Checkbox(value: true, onChanged: null),
    );
  }
}
