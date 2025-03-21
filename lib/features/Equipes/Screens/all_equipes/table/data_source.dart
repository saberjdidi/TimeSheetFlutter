
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/common/widgets/icons/table_action_icon_buttons.dart';
import 'package:timesheet_flutter/features/shop/controllers/dashboard_controller.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/helpers/helper_functions.dart';

import '../../../../../routes/routes.dart';

class EquipeRows extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    final order = DashboardController.orders[index];
    //final order = OrderModel(id: 'id', status: OrderStatus.pending, totalAmount: 365, orderDate: DateTime.now(), items: []);

    return DataRow2(
      //onTap: () => Get.toNamed(TRoutes.orderDetails, arguments: order),
      selected: false,
      onSelectChanged: (value){},
        cells: [
          DataCell(Text(order.id, style: Theme.of(Get.context!).textTheme.bodyLarge!.apply(color: TColors.primary))),
          DataCell(Text(order.formattedOrderDate)),
          DataCell(Text('5 Items')),
          DataCell(
              TRoundedContainer(
                radius: TSizes.cardRadiusSm,
                padding: const EdgeInsets.symmetric(vertical: TSizes.sm, horizontal: TSizes.md),
                backgroundColor: THelperFunctions.getOrderStatusColor(order.status).withOpacity(0.1),
                child: Text(
                  order.status.name.capitalize.toString(),
                  style: TextStyle(color: THelperFunctions.getOrderStatusColor(order.status)),
                ),
              )
          ),
          DataCell(Text('\$${order.totalAmount}')),
          DataCell(
              TTableActionButtons(
                view: true,
                edit: false,
                onViewPressed: () => Get.toNamed(TRoutes.orderDetails, arguments: order, parameters: {'orderId': order.id}),
                onDeletePressed: (){},
              ))
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => DashboardController.orders.length;

  @override
  int get selectedRowCount => 0;
  
}