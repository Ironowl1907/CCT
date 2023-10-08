extends RigidBody2D

var shouldDelete = false

func _process(delta):
	if (shouldDelete):
		var target = get_parent()
		var child = $CPUParticles2D
		self.remove_child(child)
		target.add_child(child)
		child.set_owner(target)
		child.emitting = true
		child.global_position = global_position
		
		get_parent().remove_child(self)
