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
			"Esta antigua casa en los suburbios est� abandonada, pero tambien... Embrujada!
			Escapate antes de caer en las trampas de este macabro lugar.",
			"casa.jpg"),
			
			new Laberinto("Museo",
			"El Museo de Ciencias Naturales es una gran atracci�n durante el dia...
			Pero de noche se dice que algunas cosas cobran vida! Tendras que escapar si no queres que empiecen los problemas!",
			"museo.jpg"),
			
			new Laberinto("Prision",
			"Hay una revuelta en la Prision Estatal, y es tu oportunidad para recuperar la libertad!
			Deber�s ser astuto y sigiloso...",
			"prision.jpg"),
			
			new Laberinto("Hospital",
			"El hospital est� a punto de prenderse fuego, pero �se olvidaron de vos dentro de �l!
			Ten� cuidado,sorte� los obst�culos y las puertas bloqueadas.",
			"hospital.jpg"),
			
			new Laberinto("Estaci�n de bomberos",
			"Te tienen como rehen en la estacion de bomberos, y tenes que aprovechar
			este momento de distraccion para escapar! Solo un camino te llevara a la salida!",
			"bomberos.jpg")
		]
	}	
}