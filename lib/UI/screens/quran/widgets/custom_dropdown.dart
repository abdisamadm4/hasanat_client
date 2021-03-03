import 'package:flutter/material.dart';
import 'package:hasanat/core/models/dropdown.dart';

class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDowState createState() => _CustomDropDowState();
}

class _CustomDropDowState extends State<CustomDropDown> {
  String _selected;

  List<DropDown> _item = [
    DropDown(id: 1, name: 'juz\1'),
    DropDown(id: 2, name: 'juz\2'),
    DropDown(id: 3, name: 'juz\3'),
    DropDown(id: 4, name: 'juz\4'),
    DropDown(id: 5, name: 'juz\5'),
    DropDown(id: 6, name: 'juz\6'),
    DropDown(id: 7, name: 'juz\7'),
    DropDown(id: 8, name: 'juz\8'),
    DropDown(id: 9, name: 'juz\9'),
    DropDown(id: 10, name: 'juz\10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xFF184A45),
          ),
          color: Color(0xFF184A45),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<String>(
            dropdownColor: Color(0xFF184A45),
            iconEnabledColor: Color(0xFFB0B8B4),
            isDense: true,
            hint: new Text(
              "----",
              style: TextStyle(color: Color(0xFFB0B8B4)),
            ),
            value: _selected,
            onChanged: (String newValue) {
              setState(() {
                _selected = newValue;
              });

              print(_selected);
            },
            items: _item.map((DropDown map) {
              return new DropdownMenuItem<String>(
                value: map.name,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    map.name,
                    style: TextStyle(color: Color(0xFFB0B8B4)),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
