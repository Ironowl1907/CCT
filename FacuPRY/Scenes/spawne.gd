extends Node

func _on_timer_timeout():
	var meteor = preload("res://FacuPRY/Objects/Metheor.tscn").instantiate()
	var yPos = randi_range(0, 1000)
	meteor.translate(Vector2(1920, yPos))
	meteor.angular_velocity = randi_range(3, -3)
	add_child(meteor)
