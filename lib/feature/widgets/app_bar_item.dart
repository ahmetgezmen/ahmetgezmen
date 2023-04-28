import 'package:ahmetgezmen/utils/extension/padding_extension.dart';
import 'package:flutter/material.dart';

class AppBarItemWidget extends StatelessWidget {
  const AppBarItemWidget({super.key, required this.child, this.isSelected = false});
  final Widget child;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isSelected ? 10 : 0,
      child: InkWell(
        onTap: () {},
        child: child.p16,
      ),
    );
  }
}
