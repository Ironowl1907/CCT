extends Node2D

func _process(delta):
	if rotation_degrees < 200:
		rotation_degrees += 30 * delta
	else:
		move_local_y(2)
