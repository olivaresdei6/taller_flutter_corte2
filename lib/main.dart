import 'package:flutter/material.dart';
import 'package:taller_1_2do_corte/widget/formulario_de_pedido.dart';

void main() {
  	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Welcome to CyberPizza',
			initialRoute: '/',
			routes: {
				'/': (context) => const FormularioPedido(),
				//'/info_pedido': (context) => const InfoPedido(),
			},
			debugShowCheckedModeBanner: false,
			
			theme: ThemeData(
				colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
				useMaterial3: true,
			),
		);
	}
}