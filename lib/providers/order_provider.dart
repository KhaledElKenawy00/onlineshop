import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onloneshop/models/order_model.dart';

class OrderProvider extends ChangeNotifier {
  List<OrdersModelAdvanced> orders = [];
  List<OrdersModelAdvanced> get oreders => orders;

  Future<List<OrdersModelAdvanced>> fetchOrders() async {
    User? user = await FirebaseAuth.instance.currentUser;
    try {
      var ref = await FirebaseFirestore.instance
          .collection('ordersAdvanced')
          .get()
          .then((snapshotData) {
        oreders.clear();
        for (var element in snapshotData.docs) {
          orders.insert(
              0,
              OrdersModelAdvanced(
                  orderId: element.get('orderId'),
                  userId: element.get('userId'),
                  productId: element.get('productId'),
                  productTitle: element.get('productTitle'),
                  userName: element.get('userName'),
                  price: element.get('price').toString(),
                  imageUrl: element.get('imageUrl'),
                  quantity: element.get('quantity').toString(),
                  orderDate: element.get('orderDate')));
        }
      });
      return orders;
    } catch (e) {
      rethrow;
    }
  }
}
