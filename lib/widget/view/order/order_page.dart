
import 'package:flutter/material.dart';
import 'package:shoping_1/widget/view/order/all_page.dart';
import 'package:shoping_1/widget/view/order/cancel_page.dart';
import 'package:shoping_1/widget/view/order/delivered_page.dart';
import 'package:shoping_1/widget/view/order/transit_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
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
              'My Order',
              style: TextStyle(fontSize: 24),
            ),
            bottom: TabBar(
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
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              tabs: const [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "In Transit",
                ),
                Tab(
                  text: "Delivered",
                ),
                Tab(
                  text: "Cancel",
                )
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              AllOrderPage(),
              TransitPage(),
              DeliveredPage(),
              CancelPage(),
            ],
          )
      ),
    );
  }
}
