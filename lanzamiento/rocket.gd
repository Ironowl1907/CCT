extends Sprite2D

var rotationAccel = 0
var s = 1
var dupli = 16
signal balanceGameOver

func absolute(n):
	if (n < 1):
		return n * -1
	else:
		return n

func _ready():
	connect("balanceGameOver", get_parent().get_parent().get_parent().balanceDefeat)
	$winTimer.start()
	get_parent().get_node("Camera2D").shake(100, 100, 7)

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
		$incline.texture = preload("res://sprites/bola verde.png")
	elif (absolute(rotation_degrees) < 40):
		rotationAccel = 3 * s * delta * dupli
		$incline.texture = preload("res://sprites/bola celeste.png")
	elif (absolute(rotation_degrees) < 60):
		$incline.texture = preload("res://sprites/bola roja.png")
		rotationAccel = 4 * s * delta * dupli
		emit_signal("balanceGameOver")
	else:
		rotationAccel = 0
	
	if Input.is_action_pressed("ui_left"):
		rotationAccel -= 70 * delta
	elif Input.is_action_pressed("ui_right"):
		rotationAccel += 70 * delta

	rotation_degrees += rotationAccel


#func _on_animation_player_animation_finished(anim_name):
	


func _on_win_timer_timeout():
	get_parent().get_parent().get_parent().c4()
