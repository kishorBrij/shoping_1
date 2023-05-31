import 'package:flutter/material.dart';
import 'package:shoping_1/model/cart_model.dart';

import '../../../data/homedata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Main Home'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 130,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assest/image/shoping_img.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: imageCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: imageCategories[index].color,
                          radius: 30,
                          child: Image.asset(
                            imageCategories[index].image,
                            height: 50,
                            width: 50,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageCategories[index].title,
                          style: const TextStyle(color: Colors.white60),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Latest Sale',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assest/image/latest_sale.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "T Shirt",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount:  imageData.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(left: 7),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 56),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ))),
                        Image.asset(
                          imageData[index].image,
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageData[index].productName,
                          style: const TextStyle(color: Colors.white60),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageData[index].price,
                          style: const TextStyle(color: Colors.tealAccent),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Shoes",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: imageShoe.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(left: 7),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 56),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ))),
                        Image.asset(
                          imageShoe[index].image,
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageShoe[index].productName,
                          style: const TextStyle(color: Colors.white60),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageShoe[index].price,
                          style: const TextStyle(color: Colors.tealAccent),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent View",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: imageRecent.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(left: 7),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 56),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ))),
                        Image.asset(
                          imageRecent[index].image,
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageRecent[index].productName,
                          style: const TextStyle(color: Colors.white60),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageRecent[index].price,
                          style: const TextStyle(color: Colors.tealAccent),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
