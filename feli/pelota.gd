extends RigidBody2D

@export var tipo = 1

const SPRING_CONSTANT = 1000.0
func _physics_process(delta):
	self.rotation_degrees = 0
	if Input.is_action_pressed("CLICK"):
		self.linear_velocity = SPRING_CONSTANT * get_local_mouse_position() * delta
