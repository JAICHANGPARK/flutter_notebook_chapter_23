import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
                    const SizedBox(
                      height: 8,
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
                        Text(
                          "Due Today",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "\$00.00",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        onPressed: () {},
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
                        child: const Text(
                          "Start Free Trial",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: "By continuing, you are agreening to our ",
                    ),
                    TextSpan(
                      text: "Subscriber Terms ",
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      recognizer: _longPressRecognizer,
                    ),
                    const TextSpan(
                      text: "You will be automatically charged at the end of the Trial Period. "
                          "including any applicable taxes.",
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              surfaceTintColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment Details',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 24, 0, 8),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Credit Card Number",
                          prefixIcon: Icon(
                            Ionicons.logo_bitcoin,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.clear),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            labelText: "Month",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        )),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Year",
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        )),
                        const Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            labelText: "CVV",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        )),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.thumb_up),
                          Text("Autosaved"),
                        ],
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _longPressRecognizer = LongPressGestureRecognizer()..onLongPress = _handlePress;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _longPressRecognizer.dispose();
    super.dispose();
  }

  late LongPressGestureRecognizer _longPressRecognizer;

  void _handlePress() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Clicked Terms'),
      ),
    );
  }
}
