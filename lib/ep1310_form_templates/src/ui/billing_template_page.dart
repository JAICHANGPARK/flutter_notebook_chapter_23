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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Column(
              children: [
                Text("Billing"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
