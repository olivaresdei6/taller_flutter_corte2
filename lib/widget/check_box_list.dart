
import 'package:flutter/material.dart';

class CheckboxList extends StatelessWidget {
	const CheckboxList({
		super.key,
		required this.label,
		required this.value,
		required this.onChanged,
	});

	final String label;
	final bool value;
	final Function(bool?) onChanged;


	@override
	Widget build(BuildContext context) {
		return CheckboxListTile(
			controlAffinity: ListTileControlAffinity.leading,
			title: Text(label),
			value: value,
			onChanged: onChanged,
		);
	}
}