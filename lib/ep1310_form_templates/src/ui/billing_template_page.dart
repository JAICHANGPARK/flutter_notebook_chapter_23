import 'package:flutter/material.dart';

class BillingTemplatePage extends StatefulWidget {
  const BillingTemplatePage({Key? key}) : super(key: key);

  @override
  State<BillingTemplatePage> createState() => _BillingTemplatePageState();
}

class _BillingTemplatePageState extends State<BillingTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 58),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              surfaceTintColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Billing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Plan",
                          hintText: "Annual Plan",
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Due in 30 days"),
                        Text("\$99.95"),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
