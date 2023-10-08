extends Node2D

var selected: bool = false


func _ready():
	var blue = preload("res://sprites/piedra celeste.png")
	var red = preload("res://sprites/piedra roja.png")
	var yellow = preload("res://sprites/piedra amarilla.png")
	var green = preload("res://sprites/piedra verde.png")
	var colors = [blue,red,yellow,green]
	colors.shuffle()
	$Connection/Sprite2D.texture = colors[0]
	$Connection2/Sprite2D.texture = colors[1]
	$Connection3/Sprite2D.texture = colors[2]
	$Connection4/Sprite2D.texture = colors[3]
	colors.shuffle()
	$Cable/Sprite2D.texture = colors[0]
	$Cable2/Sprite2D.texture = colors[1]
	$Cable3/Sprite2D.texture = colors[2]
	$Cable4/Sprite2D.texture = colors[3]


func _draw() -> void:
	draw_line($Cable.initalPos, $Cable.position, Color.BLACK, 63)
	draw_line($Cable2.initalPos, $Cable2.position, Color.BLACK, 63)
	draw_line($Cable3.initalPos, $Cable3.position, Color.BLACK, 63)
	draw_line($Cable4.initalPos, $Cable4.position, Color.BLACK, 63)

func _process(_delta):
	if ($Cable.CheckCab and $Cable2.CheckCab and $Cable3.CheckCab and $Cable4.CheckCab):
		print ("win")
	queue_redraw()
