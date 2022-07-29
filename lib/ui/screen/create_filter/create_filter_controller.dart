import 'package:poke_filter_go/core/object/filter_attribute.dart';

class CreateFilterController {
  List<FilterAttribute> findAttributes() {
    var attributes = <FilterAttribute>[];
    for (var i = 1; i < 10; i++) {
      attributes
          .add(FilterAttribute(attribute: "attribute $i", value: i.toString()));
    }

    return attributes;
  }
}
