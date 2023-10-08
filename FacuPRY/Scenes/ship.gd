extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 0
var spee = 0

func _physics_process(delta):
	if Input.is_action_pressed("ui_down"):
		spee += 5

	# Handle Jump.
	elif Input.is_action_pressed("ui_up"):
		spee -= 5
	
	else:
		if (spee > 0):
			spee -= 15;
		elif (spee < 0):
			spee += 15;

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("ui_left"):
		rotation_degrees += 2
	elif Input.is_action_pressed("ui_right"):
		rotation_degrees -= 2

	if Input.is_action_just_pressed("space"):
		var bullet = preload("res://FacuPRY/Objects/bullet.tscn").instantiate()
		bullet.position = position
		bullet.global_rotation = rotation
		get_parent().add_child(bullet)

	velocity = spee * Vector2(0, 1).rotated(rotation)
	move_and_slide()
