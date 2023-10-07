extends Area2D

var type;
var drawLine = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (drawLine):
		draw_line(self.global_position, get_global_mouse_position(), "black")


func _on_mouse_entered():
	drawLine = true


func _on_mouse_exited():
	drawLine = false
