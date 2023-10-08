extends Sprite2D

func _process(delta):
	global_position.x += 50 * delta


func _on_button_pressed() -> void:
	get_parent().get_parent().c5()
