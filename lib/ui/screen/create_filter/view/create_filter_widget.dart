import 'package:flutter/material.dart';
import 'package:poke_filter_go/core/object/filter_attribute.dart';
import 'package:poke_filter_go/ui/screen/create_filter/create_filter_controller.dart';

import '../components/checkbox_tile_component.dart';
import 'create_filter_page.dart';

class CreateFilterWidget extends State<CreateFilterPage> {
  final _conttroler = CreateFilterController();

  var attributes = <FilterAttribute>[];

  @override
  void initState() {
    setState(() {
      attributes = _conttroler.findAttributes();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: attributes.length,
        itemBuilder: (context, index) {
          return CheckboxTileComponent(
            attribute: attributes[index],
          );
        },
      ),
    );
  }
}
