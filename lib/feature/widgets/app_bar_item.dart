import 'package:ahmetgezmen/feature/provider/app_bar_provider.dart';
import 'package:ahmetgezmen/utils/extension/padding_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarItemWidget extends ConsumerWidget {
  const AppBarItemWidget({super.key, required this.child, this.isSelected = false, required this.index});
  final Widget child;
  final bool isSelected;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: isSelected ? 10 : 0,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          ref.read(appBarProvider.notifier).state = index;
        },
        child: child.p16,
      ),
    );
  }
}
