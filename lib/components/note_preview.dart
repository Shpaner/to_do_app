import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotePreview extends StatelessWidget {
  const NotePreview({
    required this.title,
    required this.note,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String title;
  final String note;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Icon(icon,
              color: Colors.blueAccent),
        ],
      ),
      content: Text(note),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
