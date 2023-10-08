extends Node

var asteroidCount = 0

func _on_timer_timeout():
	if (asteroidCount < 30):
		var meteor = preload("res://FacuPRY/Objects/Metheor.tscn").instantiate()
		var yPos = randi_range(10, 900)
		meteor.translate(Vector2(1920, yPos))
		meteor.angular_velocity = randi_range(3, -3)
		add_child(meteor)
		asteroidCount += 1
	else: 
		get_parent().get_parent().c7()
