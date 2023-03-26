import 'package:flutter/material.dart';

class ConfirmacionPedido extends StatefulWidget {
  final String nombre;
  final String direccion;
  final String toppings;
  final String size;
  final double total;

  const ConfirmacionPedido({
	super.key, 
    required this.nombre,
    required this.direccion,
    required this.toppings,
    required this.size,
    required this.total,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ConfirmacionPedidoState createState() => _ConfirmacionPedidoState();
}

class _ConfirmacionPedidoState extends State<ConfirmacionPedido> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Pedido recibido'),
			),
			body: Padding(
				padding: const EdgeInsets.all(26),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						const Text(
							'Gracias por tu pedido,',
							style: TextStyle(fontSize: 20),
						),
						const SizedBox(height: 10),
						Text(
							' ${widget.nombre} ',
							style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
						),
						const SizedBox(height: 20),
						const Text(
							'Hemos recibido tu pedido en la siguiente dirección:',
							style: TextStyle(fontSize: 20),
						),
						const SizedBox(height: 10),
						Text(
							' ${widget.direccion} ',
							style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
						),
						const SizedBox(height: 20),
						Text(
							'Tu pizza será de tamaño ${widget.size}, con los siguientes ingredientes:',
							style: const TextStyle(fontSize: 20),
						),
						const SizedBox(height: 10),
						Text(
							' ${widget.toppings} ',
							style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
						),
						const SizedBox(height: 20),
						Text(
							'El total de tu pedido es de: \$${widget.total}',
							style: const TextStyle(fontSize: 20),
						),
					],
				),
			),
		);
		
	}
}
