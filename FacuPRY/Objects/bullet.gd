extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	var spee = -1500
	velocity = Vector2(0, 1).rotated(global_rotation) * spee

	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		get_parent().remove_child(self)
		collision.get_collider().shouldDelete = true
		break

