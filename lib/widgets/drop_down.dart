import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {

  final List<String> items;
  String expenseName;

  DropDown(this.items, this.expenseName);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: widget.items.map(
              (txt) {
            return DropdownMenuItem<String>(
              child: Text(
                  "$txt"
              ),
              value: txt,
            );
          }
      ).toList(),
      value: widget.expenseName,
      onChanged: (newItem) {
        widget.expenseName = newItem!;
        setState(() {

        });
      },
    );
  }
}
