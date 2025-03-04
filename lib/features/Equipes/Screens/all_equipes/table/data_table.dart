import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/data_table/paginated_data_table.dart';
import 'package:timesheet_flutter/features/Equipes/Screens/all_equipes/table/data_source.dart';
import 'package:timesheet_flutter/utils/device/device_utility.dart';

class EquipeTable extends StatelessWidget {
  const EquipeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return TPaginatedDataTable(
      minWidth: 700,
      columns: [
        const DataColumn2(label: Text('Order ID')),
        const DataColumn2(label: Text('Date')),
        const DataColumn2(label: Text('Items')),
        DataColumn2(label: const Text('Status'), fixedWidth: TDeviceUtils.isMobileScreen(context) ? 120 : null),
        const DataColumn2(label: Text('Amount')),
        const DataColumn2(label: Text('Action'), fixedWidth: 100),
      ],
      source: EquipeRows(),
    );

  }
}