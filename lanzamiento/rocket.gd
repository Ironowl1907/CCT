extends Sprite2D

var rotationAccel = 0
var s = 1
var dupli = 16

func absolute(n):
	if (n < 1):
		return n * -1
	else:
		return n

func _ready():
	get_parent().get_node("Camera2D").shake(100, 100, 10)

func _process(delta):
	if rotation_degrees == 0:
		rotationAccel = randi_range(1, -1) 
		s = rotationAccel
		
	if (rotation_degrees > 0):
		s = 1
	else:
		s = -1
	
	if (absolute(rotation_degrees) < 10):
		rotationAccel = 1 * s * delta * dupli
	elif (absolute(rotation_degrees) < 20):
		rotationAccel = 2 * s * delta * dupli
	elif (absolute(rotation_degrees) < 40):
		rotationAccel = 3 * s * delta * dupli
	elif (absolute(rotation_degrees) < 60):
		rotationAccel = 4 * s * delta * dupli
	else:
		rotationAccel = 0
	
	if Input.is_action_pressed("ui_left"):
		rotationAccel -= 60 * delta
	elif Input.is_action_pressed("ui_right"):
		rotationAccel += 60 * delta

	rotation_degrees += rotationAccel
