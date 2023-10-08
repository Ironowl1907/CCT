extends RigidBody2D

var shouldDelete = false

func _process(delta):
	if (shouldDelete):
		get_parent().remove_child(self)
