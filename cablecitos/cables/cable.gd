extends Area2D

var selected: bool = false
var initalPos = position
var mov: bool = true

func _ready():
	pass # Replace with function body.


func _process(_delta):
	if Input.is_action_pressed("CLICK") and mov:
		selected = true
	else:
		selected = false
		position = initalPos
	if selected:
		var MousePosition = get_global_mouse_position()
		position = MousePosition
		queue_redraw()


func _on_connection_input_event(viewport, event, shape_idx):
	initalPos = $"../Connection".position
	selected = false
	position = initalPos
	mov = false
