extends Area2D

var selected: bool = false

func _ready():
	pass # Replace with function body.


func _process(delta):
	if selected:
		var MousePosition = get_global_mouse_position()
		position = MousePosition
	



func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("CLICK"):
		selected = true
