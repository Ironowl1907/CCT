extends Area2D

var selected: bool = false
var initalPos = Vector2(300,485)
var mouseOnTop = false


func _ready():
	var blue = preload("res://sprites/piedra celeste.png")
	var red = preload("res://sprites/piedra roja.png")
	var yellow = preload("res://sprites/piedra amarilla.png")
	var green = preload("res://sprites/piedra verde.png")
	
	$Sprite2D.texture = blue
	var AcColor = "blue"

func _process(_delta):
	if Input.is_action_pressed("CLICK") and mouseOnTop:
		selected = true
		print (selected)
	elif Input.is_action_just_released("CLICK"):
		position = initalPos
		selected = false
		print (selected)
		if get_overlapping_areas():
			position = get_overlapping_areas()[0].position
	
	if selected:
		position = get_global_mouse_position()


func _on_mouse_entered():
	mouseOnTop = true
	#print (mouseOnTop)

func _on_mouse_exited():
	mouseOnTop = false
	#print (mouseOnTop)
