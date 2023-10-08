extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 0
var spee = 0
var canShoot = true

func _physics_process(delta):

	# Handle Jump.
	if Input.is_action_pressed("ui_up"):
		spee -= 5
	
	else:
		if (spee > 0):
			spee -= 15;
		elif (spee < 0):
			spee += 15;

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("ui_right"):
		rotation_degrees += 2
	elif Input.is_action_pressed("ui_left"):
		rotation_degrees -= 2

	if Input.is_action_just_pressed("space") and canShoot:
		var bullet = preload("res://FacuPRY/Objects/bullet.tscn").instantiate()
		$AudioStreamPlayer2D.play()
		bullet.position = position
		bullet.global_rotation = rotation
		get_parent().add_child(bullet)
		canShoot = false
		$shootingTimer.start()

	if (spee > 500):
		spee = 500
	if (spee < -500):
		spee = -500

	velocity = spee * Vector2(0, 1).rotated(rotation)
	move_and_slide()
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider().name != "limits":
			print("ACÁ PIERDE FACU")


func _on_shooting_timer_timeout():
	canShoot = true
