extends Area2D

var selected: bool = false
@onready var initalPos = position
var mouseOnTop = false

func _process(_delta):
	if Input.is_action_just_pressed("CLICK") and mouseOnTop:
		selected = true
	elif Input.is_action_just_released("CLICK"):
		position = initalPos
		selected = false
		if get_overlapping_areas():
			position = get_overlapping_areas()[0].position
	
	if selected:
		position = get_global_mouse_position()


func _on_mouse_entered():
	mouseOnTop = true

func _on_mouse_exited():
	mouseOnTop = false
