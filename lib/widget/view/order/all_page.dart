import 'package:flutter/material.dart';
import 'package:shoping_1/data/order_data.dart';

class AllOrderPage extends StatefulWidget {
  const AllOrderPage({Key? key}) : super(key: key);

  @override
  State<AllOrderPage> createState() => _AllOrderPageState();
}

class _AllOrderPageState extends State<AllOrderPage> {
  // List image = [
  //   "assest/image/salwar_green.png",
  //   "assest/image/salwar_green1.png",
  //   "assest/image/salwar_pink.png",
  //   "assest/image/Salwar_red.png",
  // ];
  // List heading = [
  //   'Green Suit',
  //   'Light Green suit',
  //   'Pink Suit',
  //   'Red Suit',
  // ];
  // List Price = [
  //   "\$200",
  //   "\$300",
  //   "\$250",
  //   "\$400",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.all(6),
                  itemCount: allPageData .length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(15)),
                      margin:
                      const EdgeInsets.only(left: 8, bottom: 15, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 12, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      allPageData [index].heading,
                                      style: const TextStyle(
                                          color: Colors.white60, fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      allPageData [index].price,
                                      style: const TextStyle(
                                          color: Colors.white60, fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Container(
                                      width: 114,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'In Transit',
                                            style:
                                            TextStyle(color: Colors.black),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.pink,
                                            radius: 17,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                size: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 138,
                                  width: 135,
                                  child: GridView.builder(
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    itemCount: allPageData .length,
                                    gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 1,
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 4.0,
                                        mainAxisSpacing: 4.0),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: Colors.grey[600],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                allPageData [index].image,
                                              ),
                                              fit: BoxFit.fill,
                                            )),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
