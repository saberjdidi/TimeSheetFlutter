import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/features/shop/screens/dashboard/table/data_table.dart';
import 'package:timesheet_flutter/features/shop/screens/dashboard/widgets/dashboard_card.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class DashboardTabletScreen extends StatelessWidget {
  const DashboardTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Heading
                Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Cards
                const Row(
                  children: [
                    Expanded(child: TDashboardCard(title: 'Sales Total', subTitle: '\$356.0', stats: 25)),
                    SizedBox(width: TSizes.spaceBtwItems),
                    Expanded(child: TDashboardCard(title: 'Average Order Value', subTitle: '\$250.6', stats: 15)),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const Row(
                  children: [
                    Expanded(child: TDashboardCard(title: 'Total Orders', subTitle: '\$36', stats: 44)),
                    SizedBox(width: TSizes.spaceBtwItems),
                    Expanded(child: TDashboardCard(title: 'Visitors', subTitle: '\$25.035', stats: 2)),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Bar Graph
                //const TWeeklySalesGraph(),
                const SizedBox(height: TSizes.spaceBtwSections),
                ///Orders
              TRoundedContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recent Orders', style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    const DashboardOrderTable()
                  ],
                ),
              ),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Pie Chart
                //const OrderStatusPieChart(),
              ],
            ),
          ),
        )
    );
  }
}