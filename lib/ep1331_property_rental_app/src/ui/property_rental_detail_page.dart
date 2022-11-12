import 'package:flutter/material.dart';

class PropertyRentalDetailPage extends StatefulWidget {
  const PropertyRentalDetailPage({Key? key}) : super(key: key);

  @override
  State<PropertyRentalDetailPage> createState() => _PropertyRentalDetailPageState();
}

class _PropertyRentalDetailPageState extends State<PropertyRentalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            height: 80,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Contact Agent"),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      minimumSize: Size(
                        double.infinity,
                        double.infinity,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text(
                      "Book a Visit",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
