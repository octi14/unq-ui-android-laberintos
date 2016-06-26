package servicioRest

import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.json.JSONUtils
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.api.XTRest
import repo.Repo

@Controller
class LaberintoAndroidController {
	extension JSONUtils = new JSONUtils

	@Get("/laberintos")
	def traerLaberintos() {
		response.contentType = "application/json"

		var repo = Repo.repo

		ok(repo.laberintos.toJson)
	}
	
	@Get("/inventario")
	def traerInventario() {
		response.contentType = "application/json"

		var repo = Repo.repo

		ok(repo.inventario.toJson)
	}
	def static void main(String[] args) {
		XTRest.start(LaberintoAndroidController, 9090)
	}
	
	
}