import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class DynamicSearchDropdown<T> extends StatefulWidget {
  const DynamicSearchDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    this.excludeSelected = false,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final List<T> items;
  final bool excludeSelected;
  final ValueChanged<T> onChanged;

  @override
  State<DynamicSearchDropdown<T>> createState() => _DynamicSearchDropdownState<T>();
}

class _DynamicSearchDropdownState<T> extends State<DynamicSearchDropdown<T>> {

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<T>.search(
      hintText: widget.hintText,
      items: widget.items,
      excludeSelected: widget.excludeSelected,
      onChanged: (value) {

        widget.onChanged(value);
      },

    );
  }
}
