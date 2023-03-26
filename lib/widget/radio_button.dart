

import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
	const RadioButton({
		super.key,
		required this.label,
		required this.value,
		required this.groupValue,
		required this.onChanged,
	});

	final String label;
	final int value;
	final int? groupValue;
	final Function(int?) onChanged;

	@override
	Widget build(BuildContext context) {
		return RadioListTile(
			controlAffinity: ListTileControlAffinity.leading,
			value: value,
			groupValue: groupValue,
			onChanged: onChanged,
			title: Text(label),

		);
	}
}