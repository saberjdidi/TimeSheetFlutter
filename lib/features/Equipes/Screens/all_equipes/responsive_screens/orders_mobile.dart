
import 'package:flutter/material.dart';
import 'package:timesheet_flutter/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:timesheet_flutter/common/widgets/containers/rounded_container.dart';
import 'package:timesheet_flutter/common/widgets/data_table/table_header.dart';
import 'package:timesheet_flutter/features/Equipes/Screens/all_equipes/table/data_table.dart';
import 'package:timesheet_flutter/utils/constants/sizes.dart';

class EquipeMobileScreen extends StatelessWidget {
  const EquipeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Breadcrumbs
              TBreadcrumbsWithHeading(heading: 'Equipes', breadcrumbItems: ['Equipes']),
              SizedBox(height: TSizes.spaceBtwSections,),

              //Table body
              //Show loader
              TRoundedContainer(
                child: Column(
                  children: [
                    //Table header
                    TableHeader(showLeftWidget: false),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    //Table
                    EquipeTable(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}