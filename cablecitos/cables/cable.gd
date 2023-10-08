extends Area2D

var selected: bool = false
var initalPos = position
var mouseOnTop = false


func _process(_delta):
	if Input.is_action_pressed("CLICK") and mouseOnTop:
		selected = true
	elif Input.is_action_just_released("CLICK"):
		selected = false
		if get_overlapping_areas():
			print("AAAAAAAAAAAAAAAAAAAAAAA")
			position = get_overlapping_areas()[0].position
		else:
			position = initalPos
	
	if selected:
		position = get_global_mouse_position()


func _on_mouse_entered():
	mouseOnTop = true

func _on_mouse_exited():
	mouseOnTop = false
