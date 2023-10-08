extends Area2D

var selected: bool = false
var initalPos = Vector2(300,620)
var mouseOnTop = false

func _ready():
	var MyColor


func _process(_delta):
	if Input.is_action_pressed("CLICK") and mouseOnTop:
		selected = true
		print (selected)
	elif Input.is_action_just_released("CLICK"):
		position = initalPos
		selected = false
		print (selected)
		if get_overlapping_areas():
			position = get_overlapping_areas()[0].position
	
	if selected:
		position = get_global_mouse_position()


func _on_mouse_entered():
	mouseOnTop = true
	#print (mouseOnTop)

func _on_mouse_exited():
	mouseOnTop = false
	#print (mouseOnTop)
