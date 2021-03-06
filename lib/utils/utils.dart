import 'package:flutter_dark_store/model/order_model.dart';

class Utils {
  static double getTotalPrice(List<OrderModel> orders) {
    double price = 0;
    for (final order in orders) {
      price += order.price;
    }
    return price;
  }
}
