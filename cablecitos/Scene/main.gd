extends Node2D

var selected: bool = false


func _draw() -> void:
	draw_line($Cable.initalPos, $Cable.position, Color.RED, 10)

func _process(_delta):
	queue_redraw()
