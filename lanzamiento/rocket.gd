extends Sprite2D

var rotationAccel = 0
var s = 1
var dupli = 16
signal balanceGameOver
var shouldMove = false
var canDie = true
var shouldDie = false

func absolute(n):
	if (n < 1):
		return n * -1
	else:
		return n

func _process(delta):
	if Input.is_action_pressed("space"):
		shouldMove = true
		get_parent().shouldMove = true
		$winTimer.start()
		$CPUParticles2D.emitting = true
		get_parent().get_node("Camera2D").shake(100, 100, 7)
	
	if (shouldMove):
		if rotation_degrees == 0:
			rotationAccel = randi_range(1, -1) 
			s = rotationAccel
			
		if (rotation_degrees > 0):
			s = 1
		else:
			s = -1
		
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
	
		if Input.is_action_pressed("Left"):
			rotationAccel -= 70 * delta
		elif Input.is_action_pressed("Right"):
			rotationAccel += 70 * delta

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
			shouldDie = true
			get_parent().get_parent().get_node("transitioner").play("fade")
		else:
			rotationAccel = 0
		
		if Input.is_action_pressed("Left"):
			rotationAccel -= 70 * delta
		elif Input.is_action_pressed("Right"):
			rotationAccel += 70 * delta
		rotation_degrees += rotationAccel


#func _on_animation_player_animation_finished(anim_name):


func _on_win_timer_timeout():
	get_parent().get_parent().get_node("transitioner").play("fade")
	canDie = false

func _on_transitioner_animation_finished(anim_name):
	if not shouldDie:
		get_parent().get_parent().get_parent().c4()
	else:
		get_tree().change_scene_to_file("res://Menus/Failure/main_menu.tscn")
