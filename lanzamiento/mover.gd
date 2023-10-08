extends Node2D


func _process(delta):
	self.global_position.y -= 1000 * delta
