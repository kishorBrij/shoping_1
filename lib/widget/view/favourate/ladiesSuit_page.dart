import 'package:flutter/material.dart';
import 'package:shoping_1/data/favourate_data.dart';

class LadiesSuit extends StatefulWidget {
  const LadiesSuit({Key? key}) : super(key: key);

  @override
  State<LadiesSuit> createState() => _LadiesSuitState();
}

class _LadiesSuitState extends State<LadiesSuit> {
  // List imageSuit = [
  //   "assest/imageLadiesSuit/salwar_green.png",
  //   "assest/imageLadiesSuit/salwar_green1.png",
  //   "assest/imageLadiesSuit/salwar_pink.png",
  //   "assest/imageLadiesSuit/Salwar_red.png",
  //   "assest/imageLadiesSuit/salwar_red1.png",
  //   "assest/imageLadiesSuit/salwar_pink.png",
  //   "assest/imageLadiesSuit/Salwar_red.png",
  //   "assest/imageLadiesSuit/salwar_red1.png",
  // ];
  // List heading = [
  //   'Green Suit',
  //   'Light Green suit',
  //   'Pink Suit',
  //   'Red Suit',
  //   'Red1 Suit',
  //   'Pink Suit',
  //   'Red Suit',
  //   'Red1 Suit',
  // ];
  // List Price = [
  //   "\$200",
  //   "\$300",
  //   "\$250",
  //   "\$400",
  //   "\$500",
  //   "\$350",
  //   "\$370",
  //   "\$400",
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Container(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: ladiesSuit.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .6,
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                            ladiesSuit[index].image,
                            height: 150,
                            width: 150,
                          ),

                        ),
                        Positioned(
                          right: 44,
                          bottom: -16,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.grey[800],
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.cyan,
                                  size: 20,
                                )),
                          ),),
                        Positioned(
                          right: 3,
                          bottom: -16,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.grey[800],
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                )),
                          ),)
                      ],
                    ),

                    const SizedBox(
                      height:4,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8,bottom: 5,top: 8),
                      child: Row(
                        children: const[
                          Icon(
                            Icons.star,
                            color: Colors.amber,size:15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,size:15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,size:15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,size:15,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.amber,size:15,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      //alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      child: Text(
                        ladiesSuit[index].heading,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      //alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      child: Text(
                        ladiesSuit[index].price,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
