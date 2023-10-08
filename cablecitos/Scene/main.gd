extends Node2D

var selected: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	if selected:
#		var MousePosition = get_global_mouse_position()
#		$Cable.position = MousePosition
#


func _on_cable_input_event(viewport, event, shape_idx):
#	if Input.is_action_pressed("CLICK"):
#		selected = true
