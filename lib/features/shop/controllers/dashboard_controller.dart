import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/features/shop/models/order_model.dart';
import 'package:timesheet_flutter/utils/constants/enums.dart';
import 'package:timesheet_flutter/utils/helpers/helper_functions.dart';

class DashboardController extends GetxController {
  static DashboardController get instance => Get.find();
  //var dataList = <Map<String, String>>[].obs;
  RxList<double> weeklySales = <double>[].obs;

  final RxMap<OrderStatus, int> orderStatusData = <OrderStatus, int>{}.obs;
  final RxMap<OrderStatus, double> totalAmounts = <OrderStatus, double>{}.obs;

 static final List<OrderModel> orders = [
   OrderModel(
       id: 'CWT0012',
       status: OrderStatus.processing,
       totalAmount: 265,
       orderDate: DateTime(2025, 1, 15),
       deliveryDate: DateTime(2025, 1, 16),
   ),
   OrderModel(
       id: 'CWT0013',
       status: OrderStatus.shipped,
       totalAmount: 360,
       orderDate: DateTime(2025, 1, 17),
       deliveryDate: DateTime(2025, 1, 12),
   ),
   OrderModel(
       id: 'CWT0020',
       status: OrderStatus.delivered,
       totalAmount: 200,
       orderDate: DateTime(2025, 1, 14),
       deliveryDate: DateTime(2025, 1, 15),
   ),
   OrderModel(
       id: 'CWT0260',
       status: OrderStatus.delivered,
       totalAmount: 200,
       orderDate: DateTime(2025, 1, 05),
       deliveryDate: DateTime(2025, 1, 05),
   ),
   OrderModel(
       id: 'CWT0261',
       status: OrderStatus.delivered,
       totalAmount: 122,
       orderDate: DateTime(2025, 1, 06),
       deliveryDate: DateTime(2025, 1, 09),
   ),
 ];


  @override
  void onInit() {
    super.onInit();
    _calculateWeeklySales();
    _calculateOrderStatusData();
  }

  //Calculate weekly sales
  _calculateWeeklySales(){
    //reset weeklySales to zero
    weeklySales.value = List<double>.filled(7, 0.0);

    for(var order in orders) {
      final DateTime orderWeekStart = THelperFunctions.getStartOfWeek(order.orderDate);

      //Check if the order is within the current week
      if(orderWeekStart.isBefore(DateTime.now()) && orderWeekStart.add(Duration(days: 7)).isAfter(DateTime.now())){
        int index = (order.orderDate.weekday - 1) % 7;

        //Ensure the index non-negative
        index = index < 0 ? index + 7 : index;

        weeklySales[index] += order.totalAmount;

        debugPrint('OrderDate : ${order.orderDate}, CurrentWeekDay : $orderWeekStart, Index : $index');
      }
    }

    debugPrint('Weekly Sales : $weeklySales');
  }

  //Calculate Order Status Counts
  _calculateOrderStatusData(){
    //reset status data
    orderStatusData.clear();
    //Map to store total amounts for each status
    totalAmounts.value = { for (var status in OrderStatus.values) status : 0.0 };

    for(var order in orders) {
      //Count Orders
      final status = order.status;
      orderStatusData[status] = (orderStatusData[status] ?? 0) + 1;

      //calculate total amounts for each status
      totalAmounts[status] = (totalAmounts[status] ?? 0) + order.totalAmount;
    }
  }

  String getDisplayStatusName(OrderStatus status){
    switch(status){
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.processing:
        return 'Processing';
      case OrderStatus.shipped:
        return 'Shipped';
      case OrderStatus.delivered:
        return 'Delivered';
      case OrderStatus.cancelled:
        return 'Cancelled';
      default:
        return 'Unknown';
    }
  }

}