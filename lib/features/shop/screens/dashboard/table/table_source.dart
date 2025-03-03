
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/features/shop/models/order_model.dart';
import 'package:timesheet_flutter/utils/constants/colors.dart';
import 'package:timesheet_flutter/utils/constants/enums.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';
import 'package:timesheet_flutter/utils/helpers/helper_functions.dart';

class OrderRows extends DataTableSource {

  //final controller = DashboardController.instance;

  @override
  DataRow? getRow(int index) {
    final order = OrderModel(id: 'id', status: OrderStatus.pending, totalAmount: 365, orderDate: DateTime.now());

    return DataRow2(
        //onTap: (){},
        //selected: controller.selectedRows[index],
        //onSelectChanged: (value) => controller.selectedRows[index] = value ?? false,
        cells: [
          DataCell(Text(order.id, style: Theme.of(Get.context!).textTheme.bodyLarge!.apply(color: TColors.primary))),
          DataCell(Text(order.formattedOrderDate)),
          const DataCell(Text('5 Items')),
          DataCell(
            TRoundedContainer(
              radius: TSizes.cardRadiusSm,
              padding: const EdgeInsets.symmetric(vertical: TSizes.xs, horizontal: TSizes.md),
              backgroundColor: THelperFunctions.getOrderStatusColor(order.status).withOpacity(0.1),
              child: Text(
                order.status.name.capitalize.toString(),
                style: TextStyle(color: THelperFunctions.getOrderStatusColor(order.status)),
              ),
            )
          ),
          DataCell(Text('\$${order.totalAmount}'))
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 10;

  @override
  int get selectedRowCount => 0;
  
}