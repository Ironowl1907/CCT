extends RigidBody2D

@export var tipo = 1

const SPRING_CONSTANT := 100.0
func _physics_process(delta):
	if Input.is_action_pressed("CLICK"):
		apply_central_impulse(SPRING_CONSTANT * get_local_mouse_position() * delta)
