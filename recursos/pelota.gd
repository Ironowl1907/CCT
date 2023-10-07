extends RigidBody2D

@export var tipo = 1
var mouseOnTop = false

const SPRING_CONSTANT = 1000.0
func _physics_process(delta):
	self.rotation_degrees = 0
	if Input.is_action_pressed("CLICK") and mouseOnTop:
		self.linear_velocity = SPRING_CONSTANT * get_local_mouse_position() * delta


func _on_detector_mouse_entered():
	if not Input.is_action_pressed("CLICK"):
		mouseOnTop = true

func _on_detector_mouse_exited():
	if not Input.is_action_pressed("CLICK"):
		mouseOnTop = false;
