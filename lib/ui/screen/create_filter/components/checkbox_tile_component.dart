import 'package:flutter/material.dart';
import 'package:poke_filter_go/core/object/filter_attribute.dart';
import 'package:poke_filter_go/ui/theme/colors.dart';

class CheckboxTileComponent extends StatefulWidget {
  final FilterAttribute attribute;
  final int maxValue;
  final int value;

  const CheckboxTileComponent(
      {Key? key, required this.attribute, this.maxValue = 15, this.value = 0})
      : super(key: key);

  @override
  State<CheckboxTileComponent> createState() => _CheckboxTileComponentState();
}

class _CheckboxTileComponentState extends State<CheckboxTileComponent> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.attribute.attribute),
              _incrementAndDecrement()
            ]),
        checkColor: kSecondColor,
        activeColor: kPrimaryLightColor,
        controlAffinity: ListTileControlAffinity.leading,
        value: widget.attribute.active,
        onChanged: (value) {
          setState(() {
            widget.attribute.active = !widget.attribute.active;
          });
        });
  }

  Widget _incrementAndDecrement() {
    return Row(
      children: [
        IconButton(
            onPressed: widget.attribute.value > 0
                ? () => setState(() {
                      widget.attribute.value--;
                    })
                : null,
            icon: const Icon(Icons.remove)),
        Text(widget.attribute.value.toString()),
        IconButton(
            onPressed: widget.attribute.value >= widget.maxValue
                ? null
                : () => setState(() {
                      widget.attribute.value++;
                    }),
            icon: const Icon(Icons.add)),
      ],
    );
  }
}
