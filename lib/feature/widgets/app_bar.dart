import 'package:ahmetgezmen/feature/widgets/app_bar_item.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarItemWidget(child: const Text("Home Page"), isSelected: true),
          AppBarItemWidget(child: Text("About Page")),
          AppBarItemWidget(child: Text("Contact Page")),
        ],
      ),
    );
  }
}

