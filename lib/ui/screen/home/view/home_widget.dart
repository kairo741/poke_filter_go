import 'package:flutter/material.dart';
import 'package:poke_filter_go/ui/screen/home/home_controller.dart';

import 'home_page.dart';

class HomeWidget extends State<HomePage> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () => _controller.goToNewFilter(context),
            icon: const Icon(Icons.add))
      ]),
      body: const CircularProgressIndicator(),
    );
  }
}
