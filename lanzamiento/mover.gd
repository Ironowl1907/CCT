extends Node2D

var shouldMove = false

func _process(delta):
	if (shouldMove):
		self.global_position.y -= 1000 * delta
