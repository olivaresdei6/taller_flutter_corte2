

String getToppings(List<bool> ingredientesSeleccionados) {
	String toppings = '';
	if (ingredientesSeleccionados[0] && ingredientesSeleccionados[1]) {
		toppings = 'Pepperoni y cebolla';
	} else if (ingredientesSeleccionados[0]) {
		toppings = 'Pepperoni';
	} else if (ingredientesSeleccionados[1]) {
		toppings = 'Cebolla';
	} else {
		toppings = 'No seleccionado';
	}
	return toppings;
}

getSizePizza(int? tamanioSeleccionado) {
	switch (tamanioSeleccionado) {
		case 1:
			return '8 pulgadas';
		case 2:
			return '10 pulgadas';
		case 3:
			return '12 pulgadas';
		default:
			return 'No seleccionado';
	}
}

getTotal(tamanioSeleccionado, List<bool> ingredientesSeleccionados) {
	double total = 0;
	switch (tamanioSeleccionado) {
		case 1:
			total = 24000;
			break;
		case 2:
			total = 28000;
			break;
		case 3:
			total = 30000;
			break;
		default:
			total = 0;
	}

	if (ingredientesSeleccionados[0] && ingredientesSeleccionados[1]) {
		total += 5000;
	} else if (ingredientesSeleccionados[0]) {
		total += 3000;
	} else if (ingredientesSeleccionados[1]) {
		total += 2000;
	}
	return total;
}



