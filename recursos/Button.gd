extends Button

var so = false

func _on_button_down():
	if not so:
		so = true
		get_parent().get_node("text").iter = 0
		get_parent().get_node("text").text = ""
		get_parent().get_node("text").get_node("intialTimer").start()
		get_parent().get_node("text").txt = "En el recipiente Rojo ira el Silicio, un semiconductor que nos permitira armas los circuitos del equipo. El Azul representa el Cuarzo, este nos servira para la construccion del domo gracias a su dureza y resistencia al calor. Y por ultimo, el Verde representa el Carbonato de Calcio, material usado en construccion principalmente usado en industria alimentaria"
