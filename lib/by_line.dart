import 'package:flutter/material.dart';
import 'package:maeys_kitchen/app_colors.dart';
import 'package:maeys_kitchen/app_strings.dart';

class ByLine extends StatelessWidget {
  const ByLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: AppColors.primary,
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              AppStrings.byLine,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
