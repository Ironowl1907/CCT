extends Area2D

var type;
var detectClick = false
var drawLine = false
var permanentDraw = false

var originalDraw

func _process(delta):
	if detectClick:
		if Input.is_action_just_pressed("CLICK"):
			%papa.tipoDeNodo = type
			%papa.nodoOriginal = global_position
			drawLine = true
	
	if detectClick and %papa.tipoDeNodo == type and (not Input.is_action_pressed("CLICK")):
		permanentDraw = true
		originalDraw = %papa.nodoOriginal
	
	if not Input.is_action_pressed("CLICK"):
		drawLine = false
	
	queue_redraw()

func _draw() -> void:
	var color
	if (type == 1):
		color = Color.YELLOW
	elif (type == 2):
		color = Color.BLUE
	elif (type == 3): play smart or do 
		color = Color.RED
	else:
		color = Color.FOREST_GREEN
	
	if (permanentDraw):
		draw_line(originalDraw, Vector2(0, 0), color, 10)
	elif (drawLine):
		draw_line(Vector2(0, 0), get_local_mouse_position(), color, 10)

func _on_mouse_entered():
	detectClick = true

func _on_mouse_exited():
	%papa.tipoDeNodo = -1
	detectClick = false
