import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 5,
                          width: 50,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 190),
                        child: Text(
                          "Filter by sourcse",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      _Floating(),
                    ],
                  ));
            });
      },
      child: Icon(Icons.filter_alt),
    );
  }

  Widget _Floating() {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Newsource 1"),
            Checkbox(
                value: true,
                onChanged: ((value) {
                  setState(() {});
                })),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Newsource 2"),
            Checkbox(
                value: false,
                onChanged: ((value) {
                  setState(() {});
                })),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Newsource 3"),
            Checkbox(
                value: true,
                onChanged: ((value) {
                  setState(() {});
                })),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Newsource 4"),
            Checkbox(
                value: false,
                onChanged: ((value) {
                  setState(() {});
                })),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Newsource 5"),
            Checkbox(
                value: false,
                onChanged: ((value) {
                  setState(() {});
                })),
          ]),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 5),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Apply Filter"),
                )),
          )
        ])));
  }
}
