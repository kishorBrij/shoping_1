import 'package:flutter/material.dart';
import 'package:shoping_1/data/favourate_data.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  // List imageSports = [
  //   "assest/imageSports/adidas_greyTshirt.png",
  //   "assest/imageSports/adidas_sportsTshirt.png",
  //   "assest/imageSports/adidas_women.png",
  //   "assest/imageSports/black_trouser.png",
  //   "assest/imageSports/nike_tshirtblack.png",
  //   "assest/imageSports/adidas_greyTshirt.png",
  //   "assest/imageSports/adidas_sportsTshirt.png",
  //   "assest/imageSports/adidas_women.png",
  //   "assest/imageSports/black_trouser.png",
  //   "assest/imageSports/nike_tshirtblack.png",
  // ];
  //
  // List heading = [
  //   "Adidas Grey Tshirt",
  //   "Adidas Sports",
  //   "Adidas Women",
  //   "Nike Black Trouser",
  //   "Nike Tshirt",
  //   "Adidas Grey Tshirt",
  //   "Adidas Sports",
  //   "Adidas Women",
  //   "Nike Black Trouser",
  //   "Nike Tshirt Black",
  // ];
  //
  // List Price = [
  //   "\$2000",
  //   "\$3000",
  //   "\$2500",
  //   "\$4000",
  //   "\$3500",
  //   "\$2000",
  //   "\$3000",
  //   "\$2500",
  //   "\$4000",
  //   "\$3500",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: sportsData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .6,
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 10,
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
                          sportsData[index].image,
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
                        ),
                      ),
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
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, bottom: 5, top: 8),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.amber,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                    child: Text(
                      sportsData[index].heading,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    //alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                    child: Text(
                      sportsData[index].price,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
