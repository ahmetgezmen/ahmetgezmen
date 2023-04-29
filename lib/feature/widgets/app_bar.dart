import 'package:ahmetgezmen/constant/constant.dart';
import 'package:ahmetgezmen/feature/provider/app_bar_provider.dart';
import 'package:ahmetgezmen/feature/widgets/app_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarWidget extends ConsumerWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var i = 0; i < PagesConstant.list.length; i++)
          AppBarItemWidget(
            index: i,
            isSelected: ref.watch(appBarProvider) == i,
            child: Text(
              PagesConstant.list[i],
            ),
          ),
      ],
    );
  }
}
