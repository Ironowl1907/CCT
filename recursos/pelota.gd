extends RigidBody2D

@export var tipo = 1
var mouseOnTop = false
var follow = false

const SPRING_CONSTANT = 1000.0
func _physics_process(delta):
	self.rotation_degrees = 0
	if Input.is_action_just_pressed("CLICK") and mouseOnTop:
		follow = true
	elif Input.is_action_just_released("CLICK"):
		follow = false
	if follow:
		self.linear_velocity = SPRING_CONSTANT * get_local_mouse_position() * delta


func _on_detector_mouse_entered():
	mouseOnTop = true

func _on_detector_mouse_exited():
	mouseOnTop = false;
