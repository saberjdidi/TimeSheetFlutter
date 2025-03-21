import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timesheet_flutter/utils/device/device_utility.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key,
    this.onPressed,
    this.buttonText = 'Add',
    this.searchController,
    this.searchOnChanged,
    this.showLeftWidget = true
  });

  final Function()? onPressed;
  final String buttonText;
  final bool showLeftWidget;
  final TextEditingController? searchController;
  final Function(String)? searchOnChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: TDeviceUtils.isDesktopScreen(context) ? 3 : 1,
            child: showLeftWidget
                    ? Row(
                        children: [
                          SizedBox(
                              width: 200,
                              child: ElevatedButton(onPressed: onPressed, child: Text(buttonText))
                          ),
                        ],
                        )
                : const SizedBox.shrink()
        ),

        Expanded(
            flex: TDeviceUtils.isDesktopScreen(context) ? 2 : 1,
            child: TextFormField(
                     controller: searchController,
                     onChanged: searchOnChanged,
                     decoration: const InputDecoration(prefixIcon: Icon(Iconsax.search_normal), hintText: 'Search here...'),
        ))
      ],
    );
  }
}