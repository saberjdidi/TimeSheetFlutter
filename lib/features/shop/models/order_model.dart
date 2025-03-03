
import 'package:timesheet_flutter/utils/constants/enums.dart';
import 'package:timesheet_flutter/utils/helpers/helper_functions.dart';

class OrderModel {
  final String id;
  final String userId;
  final OrderStatus status;
  final double totalAmount;
  final DateTime orderDate;
  final String paymentMethod;
  //final AddressModel? address;
  final DateTime? deliveryDate;
  //final List<CartItemModel> items;

  OrderModel({
    required this.id,
    this.userId = '',
    required this.status,
    //required this.items,
    required this.totalAmount,
    required this.orderDate,
    this.paymentMethod = 'Paypal',
    this.deliveryDate,
    //this.address,
  });

  String get formattedOrderDate => THelperFunctions.getFormattedDate(orderDate);

  String get formattedDeliveryDate => deliveryDate != null ? THelperFunctions.getFormattedDate(orderDate) : '';

  String get orderStatusText => status == OrderStatus.delivered
      ? 'Delivered'
      : status == OrderStatus.shipped
      ? 'Shipment on the way'
      : 'Processing';

  ///Static function to create an empty user model
  // static OrderModel empty() => OrderModel(id: '', paymentMethod: '', userId: '');

  ///Convert model to json structure for storing data in firebase
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'status': status.toString(),
      'totalAmount': totalAmount,
      'orderDate': orderDate,
      'paymentMethod': paymentMethod,
      'deliveryDate': deliveryDate,
      //'address': address?.toJson(),
      //'items': items.map((item) => item.toJson()).toList()
    };
  }

}