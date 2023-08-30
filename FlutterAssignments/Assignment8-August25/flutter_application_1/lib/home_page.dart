import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
        body: Center(
            child: ElevatedButton(
                child: const Text("Go to Other"),
                onPressed: () => Get.to(Other()))),
        floatingActionButton: FloatingActionButton(
            onPressed: c.increment, child: const Icon(Icons.add)));
  }
}

class Other extends StatelessWidget {
  final Controller c = Get.find();

  Other({super.key});

  @override
  Widget build(context) {
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
