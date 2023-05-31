
import 'package:flutter/material.dart';
import 'package:shoping_1/widget/view/favourate/jeans_page.dart';
import 'package:shoping_1/widget/view/favourate/ladiesSuit_page.dart';
import 'package:shoping_1/widget/view/favourate/shirts_page.dart';
import 'package:shoping_1/widget/view/favourate/sport_page.dart';

class FavouratePage extends StatefulWidget {
  const FavouratePage({Key? key}) : super(key: key);

  @override
  State<FavouratePage> createState() => _FavouratePageState();
}

class _FavouratePageState extends State<FavouratePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Favorites ',
            style: TextStyle(fontSize: 24),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.search_outlined,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(5)),
              child: TabBar(
                isScrollable: true,
                controller: tabController,
                labelStyle: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                ),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                // indicatorWeight: 2,
                indicator: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                tabs: const [
                  Tab(
                    text: "Ladies Suit",
                  ),
                  Tab(
                    text: "Sports",
                  ),
                  Tab(
                    text: "Jeans",
                  ),
                  Tab(
                    text: "Shirts",
                  )
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    LadiesSuit(),
                    SportPage(),
                    JeansPage(),
                    ShirtsPage()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
