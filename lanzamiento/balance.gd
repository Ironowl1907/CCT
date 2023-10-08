extends Node2D



func _on_goal_area_entered(_area: Area2D) -> void:
	get_parent().c2()
