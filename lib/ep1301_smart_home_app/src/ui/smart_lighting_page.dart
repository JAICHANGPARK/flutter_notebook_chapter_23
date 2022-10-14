import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SmartLightingPage extends StatefulWidget {
  const SmartLightingPage({Key? key}) : super(key: key);

  @override
  State<SmartLightingPage> createState() => _SmartLightingPageState();
}

class _SmartLightingPageState extends State<SmartLightingPage> {
  bool condition = true;
  String _deviceType = "Panasonic Smart Lighting";

  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Column(
          children: const [
            Text("Smart Ligthing"),
            Text("Living room"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Container(
            height: 38,
            // width: 200,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                borderRadius: BorderRadius.circular(24)),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: DropdownButton<String>(
              underline: Container(),
              items: const [
                DropdownMenuItem(
                  child: Text("Panasonic Smart Lighting"),
                  value: "Panasonic Smart Lighting",
                ),
                DropdownMenuItem(
                  child: Text("Panasonic Smart Lighting2"),
                  value: "Panasonic Smart Lighting2",
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _deviceType = value ?? "";
                });
              },
              value: _deviceType,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(
                  'Device condition',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(condition ? "On" : "Off"),
                Switch(
                    value: condition,
                    onChanged: (b) {
                      setState(() {
                        condition = b;
                      });
                    })
              ],
            ),
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: (Color value) {},
            ),
          ),
        ],
      ),
    );
  }
}
