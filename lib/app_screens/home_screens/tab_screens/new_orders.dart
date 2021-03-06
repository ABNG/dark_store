import 'package:flutter/material.dart';
import 'package:flutter_dark_store/app_screens/home_screens/tab_screens/order_enum.dart';
import 'package:flutter_dark_store/model/order_model.dart';
import 'package:flutter_dark_store/reusable_widgets/Reusable_item_container.dart';

class NewOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<OrderModel> newOrder = OrderModel.itemModel
        .where((element) => element.orderType == "New Orders")
        .toList();
    return ListView(
        children: List.generate(
            newOrder.length,
            (index) => ReusableItemContainer(
                  order: newOrder[index],
                  type: OrderType.NEW_ORDER,
                )));
  }
}

class ReusableRaisedButton extends StatelessWidget {
  final String text;
  final color;

  ReusableRaisedButton({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        color: color,
        onPressed: () {},
      ),
    );
  }
}
