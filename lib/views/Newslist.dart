import 'package:flutter/material.dart';

import 'package:flutter/src/material/dropdown.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  _ItemListState() {
    _selectedVal = _ItemList[0];
  }

  final _ItemList = ["Popular", "Newest", "Oldest"];
  String? _selectedVal = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Top HeadLines",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: const [
                Text('Sort:'),
              ],
            ),
          ),
          DropdownButton(
            icon: Icon(Icons.arrow_drop_down),
            value: null,
            items: _ItemList.map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                )).toList(),
            onChanged: (val) {
              setState(() {
                _selectedVal = val as String;
              });
            },
          ),
        ],
      ),
    );
  }
}
