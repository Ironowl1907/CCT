extends Node2D

var selected: bool = false
func _draw() -> void:
	draw_line($Cable.initalPos, $Cable.position, Color.RED, 63)
	draw_line($Cable2.initalPos, $Cable2.position, Color.BLUE, 63)
	draw_line($Cable3.initalPos, $Cable3.position, Color.YELLOW, 63)
	draw_line($Cable4.initalPos, $Cable4.position, Color.GREEN, 63)


func _process(_delta):
	queue_redraw()
