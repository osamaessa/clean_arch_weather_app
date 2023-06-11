import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget? child;
  final List<Widget>? appBarActions;

  const BaseScaffold(
      {Key? key, required this.title, this.child, this.appBarActions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: DateTime.now().hour < 12 ? ColorsUtil.hexToColor("#FF010c38") : ColorsUtil.hexToColor("#FF4d70f2"),
        elevation: 0,
        actions: appBarActions,
      ),
      body: child,
    );
  }
}
