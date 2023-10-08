extends Area2D

var selected: bool = false
@onready var initalPos = position
var mouseOnTop = false
var CheckCab = false

func _ready():
	var Mycolor 
	
func _process(_delta):
	if Input.is_action_just_pressed("CLICK") and mouseOnTop:
		selected = true
	elif Input.is_action_just_released("CLICK"):
		position = initalPos
		selected = false
		if get_overlapping_areas():
			position = get_overlapping_areas()[0].position
			var overlapping_areas = get_overlapping_areas()
			var overlapping_sprite = overlapping_areas[0].get_node("Sprite2D")
			if $Sprite2D.texture == overlapping_sprite.texture:
				CheckCab = true
			else:
				CheckCab = false
	
	if selected:
		position = get_global_mouse_position()


func _on_mouse_entered():
	mouseOnTop = true

func _on_mouse_exited():
	mouseOnTop = false
