extends Control


func _on_exit_pressed():
	get_tree().quit() 


func _on_again_pressed():
	get_node("/root/Main").add_child(preload("res://lanzamiento/balance.tscn").instantiate())
	queue_free()
