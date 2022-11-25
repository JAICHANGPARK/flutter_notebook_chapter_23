import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/controller/shopink_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopinkBottomBarWidget extends ConsumerWidget {
  const ShopinkBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(shopinkMenuIndex);
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                ref.read(shopinkMenuIndex.notifier).state = 0;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 32,
                    color: index == 0 ? Colors.black : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  index == 0
                      ? const CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.black,
                  )
                      : Container(),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                ref.read(shopinkMenuIndex.notifier).state = 1;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 32,
                    color: index == 1 ? Colors.black : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  index == 1
                      ? const CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.black,
                  )
                      : Container(),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                ref.read(shopinkMenuIndex.notifier).state = 2;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 32,
                    color: index == 2 ? Colors.black : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  index == 2
                      ? const CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.black,
                  )
                      : Container(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.perm_identity,
                  size: 32,
                  color: index == 3 ? Colors.black : Colors.grey,
                ),
                const SizedBox(
                  height: 4,
                ),
                index == 3
                    ? const CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.black,
                )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
