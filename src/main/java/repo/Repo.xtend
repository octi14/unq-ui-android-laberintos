package repo

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Repo {
	
	static Repo repo
	List<Laberinto> laberintos
	List<Item> inventario
	
	def static Repo getRepo() {
		if (repo == null) {
			repo = new Repo();
		}
		return repo;
	}
	
	new(){
		laberintos = inicializarLaberintos()
		inventario = inicializarInventario()
	}
	
	def inicializarInventario() {
		#[
			new Item("Pala"),
			new Item("Martillo"),
			new Item("Llave"),
			new Item("Pistola"),
			new Item("Hacha"),
			new Item("Cuchillo"),
			new Item("Destornillador"),
			new Item("Clavos")
		]
	}
	
	def inicializarLaberintos() {

		#[
			new Laberinto("Casa",
			"Esta antigua casa en los suburbios está abandonada, pero tambien... Embrujada!
			Escapate antes de caer en las trampas de este macabro lugar.",
			"casa.jpg"),
			
			new Laberinto("Museo",
			"El Museo de Ciencias Naturales es una gran atracción durante el dia...
			Pero de noche se dice que algunas cosas cobran vida! Tendras que escapar si no queres que empiecen los problemas!",
			"museo.jpg"),
			
			new Laberinto("Prision",
			"Hay una revuelta en la Prision Estatal, y es tu oportunidad para recuperar la libertad!
			Deberás ser astuto y sigiloso...",
			"prision.jpg"),
			
			new Laberinto("Hospital",
			"El hospital está a punto de prenderse fuego, pero ¡se olvidaron de vos dentro de él!
			Tené cuidado,sorteá los obstáculos y las puertas bloqueadas.",
			"hospital.jpg"),
			
			new Laberinto("Estación de bomberos",
			"Te tienen como rehen en la estacion de bomberos, y tenes que aprovechar
			este momento de distraccion para escapar! Solo un camino te llevara a la salida!",
			"bomberos.jpg")
		]
	}	
}