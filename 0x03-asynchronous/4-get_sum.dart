import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = json.decode(userData);

    final ordersData = await fetchUserOrders(user['id']);
    final orders = json.decode(ordersData);

    double total = 0;
    for (var product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = json.decode(priceData);
      total += price;
    }

    return total;
  } catch (e) {
    return -1;
  }
}
