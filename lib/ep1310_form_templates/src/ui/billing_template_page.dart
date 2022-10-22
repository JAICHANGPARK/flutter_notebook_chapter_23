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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Billing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Padding(
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
                      children: const [
                        Text(
                          "Due in 30 days",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$99.95",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Annual Saving",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "\$12.95",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Due Today"),
                        Text("\$00.00"),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Start Free Trial",
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          elevation: 0,
                          minimumSize: const Size(300, 48),
                        ),
                      ),
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
