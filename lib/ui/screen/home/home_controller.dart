import 'package:flutter/material.dart';
import 'package:poke_filter_go/ui/screen/create_filter/view/create_filter_page.dart';

class HomeController {
  goToNewFilter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => const CreateFilterPage())));
  }
}
