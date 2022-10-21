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
        padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Billing"),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Plan",
                        hintText: "Annual Plan",
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),

                      ),
                    ),
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
