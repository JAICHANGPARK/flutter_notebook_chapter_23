import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_appbar_widget.dart';
import 'package:flutter_notebook_chapter_23/ep1313_a_new_look_for_the_ufc_app/src/ui/ufc_label_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NewUfcHomePage extends StatefulWidget {
  const NewUfcHomePage({Key? key}) : super(key: key);

  @override
  State<NewUfcHomePage> createState() => _NewUfcHomePageState();
}

class _NewUfcHomePageState extends State<NewUfcHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              const UfcAppBarWidget(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "STACKED CARD",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 240,
                child: GestureDetector(
                  onTap: () {
                    context.push("/detail");
                  },
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        top: 0,
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2012/10/25/23/32/boxing-62867_960_720.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "2 Champinship bouts",
                                style: TextStyle(
                                  color: Color.fromRGBO(188, 160, 101, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "Sat, Oct 22",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "10:00 PM +04",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Arab Emirates / Yas Island",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 78,
                child: Row(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text(
                          'View Card',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: RadialGradient(colors: [
                            Color.fromRGBO(190, 6, 7, 1),
                            Color.fromRGBO(208, 9, 8, 1),
                            Color.fromRGBO(174, 4, 4, 1),
                          ], radius: 1),
                        ),
                        child: const Center(
                          child: Text(
                            'ORDER PPV',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey, height: 0),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Text(
                      "WATCH EMBEDDED SERIES",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: UfcLabelWidget(),
                        ),
                        Positioned(
                          right: -32,
                          bottom: 140,
                          child: Transform.rotate(
                            angle: -0.2,
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 24,
                          bottom: 72,
                          child: Transform.rotate(
                            angle: -0.2,
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/03/14/10/07/muay-thai-2142472__340.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 24,
                          top: 32,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/11/20/10/42/boxing-1842466_960_720.jpg"),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                color: Colors.red,
                              ),
                            ),
                            child: Center(
                              child: CircleAvatar(
                                radius: 38,
                                backgroundColor: Colors.white.withOpacity(0.6),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Color.fromRGBO(208, 9, 8, 1),
                                  size: 42,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
