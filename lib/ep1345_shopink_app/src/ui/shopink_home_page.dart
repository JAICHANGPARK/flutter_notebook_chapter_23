import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/components/shopink_bottom_bar_widget.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/controller/shopink_controller.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/ui/shopink_cart_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'shopink_main_screen.dart';

class ShopinkHomePage extends StatefulWidget {
  const ShopinkHomePage({Key? key}) : super(key: key);

  @override
  State<ShopinkHomePage> createState() => _ShopinkHomePageState();
}

class _ShopinkHomePageState extends State<ShopinkHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Consumer(
        builder: (context, ref, _) {
          final index = ref.watch(shopinkMenuIndex);
          return IndexedStack(
            index: index,
            children: [
              const ShopinkMainScreen(),
              const ShopinkCartPage(),
              Center(
                child: Text(
                  index.toString(),
                ),
              ),
              Center(
                child: Text(
                  index.toString(),
                ),
              ),
            ],
          );
        },
      )),
      bottomNavigationBar: const ShopinkBottomBarWidget(),
    );
  }
}
