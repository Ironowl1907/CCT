extends Node2D


func _process(delta):
	self.global_position.y -= 5000 * delta
