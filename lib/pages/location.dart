import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int _value = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Text("LOCATION"),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 5,
                          width: 50,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 190),
                        child: Text(
                          "Choose your location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      _radioButtons(),
                    ],
                  );
                },
              );
            },
            child: Row(
              children: [Icon(Icons.location_on), Text("India")],
            ),
          )
        ],
      ),
    );
  }

  Widget _radioButtons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Nepal"),
            Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {});
                }),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Australia"),
            Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {});
                }),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("India"),
            Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {});
                })
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("America"),
            Radio(
                value: 4,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {});
                })
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Northkorea"),
            Radio(
                value: 5,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {});
                })
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
                  child: Text("Apply"),
                )),
          )
        ]),
      ),
    );
  }
}
