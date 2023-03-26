

import 'package:flutter/material.dart';

class CajaDeTexto extends StatelessWidget {
	const CajaDeTexto({
		Key? key,
		required this.label,
		required this.controller,
		required this.icon,
		required this.placeholder, required this.obscureText,
	}) : super(key: key);

	final String label;
	final TextEditingController controller;
	final bool obscureText;
	final IconData icon;
	final String placeholder;

	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Text(label, style: const TextStyle(fontSize: 20)),

				TextField(
					controller: controller,
					decoration: InputDecoration(
						hintText: placeholder,
						contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
						border: OutlineInputBorder(
							borderSide:
								const BorderSide(color: Colors.deepPurple, width: 2),
								borderRadius: BorderRadius.circular(10),
						),
						labelText: label,

						enabledBorder: OutlineInputBorder(
							borderSide:
								const BorderSide(color: Colors.deepPurple, width: 2),
							borderRadius: BorderRadius.circular(20),
						),
						focusedBorder: OutlineInputBorder(
							borderSide:
								const BorderSide(color: Colors.deepPurple, width: 2),
							borderRadius: BorderRadius.circular(20),
						),

						prefixIcon:
							Icon(icon, color: Colors.deepPurple),
					),
				),
			],
			
		);
	}
}