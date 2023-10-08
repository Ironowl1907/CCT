extends Area2D

var selected: bool = false
var initalPos = position
var mov: bool = true

func _ready():
	pass # Replace with function body.

func _draw():
	pass #draw_line(initalPos, position,Color.RED,8)

func _process(delta):
	draw_line(initalPos, position,Color.RED,8)
	if selected:
		var MousePosition = get_global_mouse_position()
		position = MousePosition
	



func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("CLICK" ) and mov:
		selected = true
	else:
		selected = false
		position = initalPos
		


func _on_connection_input_event(viewport, event, shape_idx):
	initalPos = $"../Connection".position
	selected = false
	position = initalPos
	mov = false
