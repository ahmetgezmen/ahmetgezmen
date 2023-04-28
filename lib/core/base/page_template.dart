import 'package:ahmetgezmen/constant/constant.dart';
import 'package:ahmetgezmen/feature/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class StatelessWidgetWithAppBar extends StatelessWidget {
  final Widget child;
  const StatelessWidgetWithAppBar
({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(BaseConstant.webTitle),
      ),
      // body: Placeholder(),
      body: Column(
      children: [
        const AppBarWidget(),
        child,
      ],
    )
    );
  }
}

