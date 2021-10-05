import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DismissBackground extends StatelessWidget {
  const DismissBackground({
    this.isPrimaryBackground = true,
    Key? key,
  }) : super(key: key);
  final bool isPrimaryBackground;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: isPrimaryBackground ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: const [
              Text(
                'Delete',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              SizedBox(width: 5.0),
              Icon(
                Icons.delete_forever,
                size: 22.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}