import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_23/ep1345_shopink_app/src/controller/shopink_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ShopinkDetailPage extends StatefulWidget {
  const ShopinkDetailPage({Key? key}) : super(key: key);

  @override
  State<ShopinkDetailPage> createState() => _ShopinkDetailPageState();
}

class _ShopinkDetailPageState extends State<ShopinkDetailPage> {
  List<String> imgItems = [
    "https://cdn.pixabay.com/photo/2016/06/03/17/35/shoes-1433925_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/05/21/14/54/feet-349687_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/04/09/18/54/shoes-2216498_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/12/10/16/57/shoes-1897708_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/06/03/17/35/shoes-1433925_960_720.jpg",
    "https://cdn.pixabay.com/photo/2020/06/21/21/53/skateboard-5326930_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/06/03/17/35/shoes-1433925_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/05/21/14/54/feet-349687_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/07/02/19/24/dumbbells-2465478_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/04/09/18/54/shoes-2216498_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/12/10/16/57/shoes-1897708_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/06/03/17/35/shoes-1433925_960_720.jpg",
    "https://cdn.pixabay.com/photo/2020/06/21/21/53/skateboard-5326930_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      radius: 24,
                      child: Icon(
                        Icons.keyboard_arrow_left_sharp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Details Products",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Consumer(builder: (context, ref, _) {
                      final index = ref.watch(shopinkImageIndex);
                      return CachedNetworkImage(
                        imageUrl: '${imgItems[index]}',
                        fit: BoxFit.cover,
                      );
                    }),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Consumer(builder: (context, ref, _) {
                        final selectedIndex = ref.watch(shopinkImageIndex);
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imgItems.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                ref.read(shopinkImageIndex.notifier).state = index;
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 16),
                                height: 64,
                                width: 64,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: index == selectedIndex ? Colors.orange : Colors.white,
                                    width: 2,
                                  ),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      imgItems[index],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Shoe Title Shoe Title Shoe Title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Dream's Shoes"),
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.red,
                          child: const Icon(Icons.favorite),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: const [
                        Text(
                          "\$100.99 ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$110.00",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: SizedBox(
                        height: 72,
                        child: Consumer(builder: (context, ref, _) {
                          final sIndex = ref.watch(shopinkShoeSizeIndex);
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  ref.read(shopinkShoeSizeIndex.notifier).state = index;
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: sIndex == index ? Colors.black : Colors.grey[300]!,
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text("${35 + index}"),
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Read more..."),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 52,
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 54,
                                  width: 54,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 54,
                                  width: 54,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(),
                                    color: Colors.black,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: const Center(
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
