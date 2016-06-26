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
			new Laberinto("Casa","Casa abandonada","casa.jpg"),
			new Laberinto("Museo", "Museo de ciencias naturales","museo.jpg"),
			new Laberinto("Prision", "Prision estatal", "prision.jpg"),
			new Laberinto("Hospital", "Hospital en ruinas", "hospital.jpg"),
			new Laberinto("Estación de bomberos", "Estacion de bomberos","bomberos.jpg")
		]
	}	
}