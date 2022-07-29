import 'package:flutter/material.dart';
import 'package:poke_filter_go/core/object/filter_attribute.dart';

class CheckboxTileComponent extends StatefulWidget {
  final FilterAttribute attribute;

  const CheckboxTileComponent({Key? key, required this.attribute})
      : super(key: key);

  @override
  State<CheckboxTileComponent> createState() => _CheckboxTileComponentState();
}

class _CheckboxTileComponentState extends State<CheckboxTileComponent> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(widget.attribute.attribute),
        controlAffinity: ListTileControlAffinity.leading,
        value: widget.attribute.active,
        onChanged: (value) {
          setState(() {
            widget.attribute.active = !widget.attribute.active;
          });
        });
  }
}
