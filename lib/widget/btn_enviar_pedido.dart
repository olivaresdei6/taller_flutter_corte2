

import 'package:flutter/material.dart';
import 'package:taller_1_2do_corte/functions/functions.dart';
import 'package:taller_1_2do_corte/widget/confirmacion_pedido.dart';

class BtnEnviar extends StatelessWidget {
	const BtnEnviar({
		super.key,
		required this.nombreController,
		required this.direccionController,
		required this.tamanioSeleccionado,
		required this.ingredientesSeleccionados,
		required this.onPressed,
	});

	final TextEditingController nombreController;
	final TextEditingController direccionController;
	final int? tamanioSeleccionado;
	final List<bool> ingredientesSeleccionados;
	final Function() onPressed;

	@override
	Widget build(BuildContext context) {
		return SizedBox(
			width: 300,
			height: 60,
			child: ElevatedButton.icon(
				onPressed: () {

					// Se valida que los campos de texto no estén vacíos
					if (nombreController.text.isEmpty ||
						direccionController.text.isEmpty) {
						// Se muestra un mensaje de error
						ScaffoldMessenger.of(context).showSnackBar(
							const SnackBar(
								content: Text('Por favor, ingresa tu nombre y dirección'),
							),
						);
						return;
					}

					// Se valida que se haya seleccionado un tamaño de pizza
					if (tamanioSeleccionado == null) {
						// Se muestra un mensaje de error
						ScaffoldMessenger.of(context).showSnackBar(
							const SnackBar(
								content: Text('Por favor, selecciona un tamaño de pizza'),
							),
						);
						return;
					}

					// Se valida que se haya seleccionado al menos un topping
					if (ingredientesSeleccionados.isEmpty) {
						// Se muestra un mensaje de error
						ScaffoldMessenger.of(context).showSnackBar(
							const SnackBar(
								content: Text('Por favor, selecciona al menos un topping'),
							),
						);
						return;
					}

					// Se muestran los datos ingresados en los campos de texto en el Widget ConfirmacionPedido
					Navigator.push(
						context,
						MaterialPageRoute(
							builder: (context) => ConfirmacionPedido(
								nombre: nombreController.text,
								direccion: direccionController.text,
								toppings: getToppings(ingredientesSeleccionados),
								size: getSizePizza(tamanioSeleccionado),
								total: getTotal(tamanioSeleccionado, ingredientesSeleccionados),
							),
						),
					).then((value) {
						nombreController.clear();
						direccionController.clear();
						onPressed();
					});
					
				},
				icon: const Icon(Icons.shopping_cart_checkout, color: Colors.white),
				label: const Text('Enviar pedido', style: TextStyle(fontSize: 20, color: Colors.white)),
				style: ElevatedButton.styleFrom(
					backgroundColor: Color(Colors.deepPurple.value),
					shape: RoundedRectangleBorder(
						borderRadius: BorderRadius.circular(40),
					),
				),
			)
		);
	}
}