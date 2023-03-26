import 'package:flutter/material.dart';
import 'package:taller_1_2do_corte/widget/btn_enviar_pedido.dart';
import 'package:taller_1_2do_corte/widget/caja_de_texto.dart';
import 'package:taller_1_2do_corte/widget/check_box_list.dart';
import 'package:taller_1_2do_corte/widget/radio_button.dart';

class FormularioPedido extends StatefulWidget {
  	const FormularioPedido({super.key});
  	@override
  	State<FormularioPedido> createState() => _FormularioPedidoState();
}

class _FormularioPedidoState extends State<FormularioPedido> {
	bool _pepperoniSelected = false;
  	bool _cebollaSelected = false;
	int? _tamanioSeleccionado;

	final nombreController = TextEditingController();
	final direccionController = TextEditingController();

	onChage(value){
		if (_tamanioSeleccionado != value) {
			setState(() {
				_tamanioSeleccionado = value;
			});
		}
	}

	@override
	void dispose() {
		nombreController.dispose();
		direccionController.dispose();
		super.dispose();
	}

  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Welcome to CyberPizza'),
				centerTitle: true,
			),
			body: SingleChildScrollView(
				child: Padding(
					padding: const EdgeInsets.all(26),
					child: Column(
						children: [
							CajaDeTexto(
								label: 'Nombre',
								controller: nombreController,
								icon: Icons.person,
								placeholder: 'Ingrese su nombre',
								obscureText: false,
							),
							const SizedBox(height: 20),
							CajaDeTexto(
								label: 'Dirección',
								controller: direccionController,
								icon: Icons.location_on,
								placeholder: 'Ingrese su dirección',
								obscureText: false,
							),
							const SizedBox(height: 20),

							Column(
								children: [
									const Row(
										children: [
											Text('Tamaño de la pizza', style: TextStyle(fontSize: 20)),
										],
									),
									const SizedBox(height: 10),

									Column(
										children: [
											RadioButton(
												label: '8 pulgadas', 
												value: 1, 
												groupValue: _tamanioSeleccionado, 
												onChanged: onChage
											),

											RadioButton(
												label: '10 pulgadas', 
												value: 2, 
												groupValue: _tamanioSeleccionado, 
												onChanged: onChage
											),

											RadioButton(
												label: '12 pulgadas', 
												value: 3, 
												groupValue: _tamanioSeleccionado, 
												onChanged: onChage
											),
										],
									)
								],
							),

							const SizedBox(height: 20),

							Column(
								children: [
									const Row(
										children: [
											Text('Ingredientes', style: TextStyle(fontSize: 20)),
										],
									),	
									const SizedBox(height: 8),

									Column(
										children: [
											CheckboxList(
												label: 'Pepperoni',
												value: _pepperoniSelected,
												onChanged: (value) {
													setState(() {
														_pepperoniSelected = value!;
													});
												},
											),
											
											CheckboxList(
												label: 'Cebolla',
												value: _cebollaSelected,
												onChanged: (value) {
													setState(() {
														_cebollaSelected = value!;
													});
												},
											),
										],
									)
								],
							),

							const SizedBox(height: 20),

							Column(
								children: [
									BtnEnviar(
										direccionController: direccionController,
										nombreController: nombreController,
										tamanioSeleccionado: _tamanioSeleccionado,
										ingredientesSeleccionados: [
											_pepperoniSelected,
											_cebollaSelected
										],
										onPressed: () {
											nombreController.clear();
											direccionController.clear();
											setState(() {
												_tamanioSeleccionado = null;
												_pepperoniSelected = false;
												_cebollaSelected = false;
											});
										},
									),									
								],
							)
						],
					)
				),
			),
		);
  	}
}