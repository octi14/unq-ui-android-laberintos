package repo

import java.util.List


class Repo {
	
	static Repo repo
	List<Laberinto> laberintos
	
	def static Repo getRepo() {
		if (repo == null) {
			repo = new Repo();
		}
		return repo;
	}
	
	new(){
		laberintos = inicializarLaberintos()
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