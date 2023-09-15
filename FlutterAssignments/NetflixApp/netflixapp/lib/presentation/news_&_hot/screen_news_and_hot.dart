import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widgets/app_bar_widget.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "New & Hot")),
      body: Container(
        child: const Text("ScreenNews"),
      ),
    );
  }
}
