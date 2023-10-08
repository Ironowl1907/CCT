extends RigidBody2D

@export var tipo = 1
var mouseOnTop = false
var follow = false

func absolute(n):
	if n < 0:
		return n * -1
	else:
		return n

var previousVel = linear_velocity

func _ready():
	self.contact_monitor = 1
	self.max_contacts_reported = 1

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

func _on_body_entered(body):
	if not $AudioStreamPlayer2D.playing:
		$AudioStreamPlayer2D.play()
