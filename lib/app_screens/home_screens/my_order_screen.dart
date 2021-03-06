import 'package:flutter/material.dart';
import 'package:flutter_dark_store/app_screens/home_screens/tab_screens/confirmed_order.dart';
import 'package:flutter_dark_store/app_screens/home_screens/tab_screens/delivered_order.dart';
import 'package:flutter_dark_store/app_screens/home_screens/tab_screens/new_orders.dart';
import 'package:flutter_dark_store/reusable_widgets/appbar_icon.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY ORDERS",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          AppbarIcon(
            pressMe: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: kToolbarHeight - 20),
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.white,
              indicatorWeight: 5.0,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 22),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white, //this is by default color
              labelPadding: EdgeInsets.only(bottom: 5.0),
              tabs: [
                Text("NEW ORDERS"),
                Text("CONFIRMED"),
                Text("DELIVERED"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [NewOrders(), ConfirmedOrder(), DeliveredOrder()],
      ),
    );
  }
}
