import 'dart:developer';
import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:shoping_1/data/cart_data.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void _incrementCounter(int index) {
    int counter = cartData[index].qty;
    setState(() {
      counter++;
    });

    cartData[index].qty = counter;
  }

  void _decrementCounter(int index) {
    int counter = cartData[index].qty;
    setState(() {
      counter--;
      if (counter == 0) {
        counter = 1;
      }

      cartData[index].qty = counter;
    });
  }

  int countItem = 0;

  updateCart() {
    countItem =0;
    for (var element in cartData) {
      countItem += element.qty;
    }

    // countItem = cartData.length;
    // log(("message$countItem"));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    updateCart();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(fontSize: 25, color: Colors.white60),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 8),
            child: IconButton(
                onPressed: () {},
                icon: badge.Badge(
                  badgeContent: Text('$countItem'),
                  position: badge.BadgePosition.topEnd(top: -15, end: -12),
                  showBadge: true,
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "My Cart List",
                  style: TextStyle(color: Colors.white60, fontSize: 16),
                ),
                Text(
                  "Delete All",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: cartData.length,
                itemBuilder: (context, index) {
                  var e = cartData[index];
                  return Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15)),
                    margin:
                    const EdgeInsets.only(left: 10, bottom: 15, right: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          e.image,
                          height: 150,
                          width: 140,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e.productName,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              e.price,
                              style: const TextStyle(
                                  color: Colors.tealAccent, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _decrementCounter(index);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                            color: Colors.grey,
                                            borderRadius:
                                            const BorderRadius.only(
                                                topLeft:
                                                Radius.circular(8),
                                                bottomLeft:
                                                Radius.circular(8))),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          '-',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Avalon',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          color: Colors.grey),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${e.qty}',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avalon',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _incrementCounter(index);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                            borderRadius:
                                            const BorderRadius.only(
                                                topRight:
                                                Radius.circular(8),
                                                bottomRight:
                                                Radius.circular(8)),
                                            color: Colors.grey),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          '+',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Avalon',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
