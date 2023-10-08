extends Node2D

func _process(delta):
	if rotation_degrees < 200:
		rotation_degrees += 30 * delta
	else:
		move_local_y(2)


func _on_button_pressed() -> void:
	get_parent().get_parent().c6()
