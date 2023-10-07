extends Node2D

var goodCounter = 0
@export var goodType = 1

func _on_area_2d_body_entered(body):
	if (body.name != "StaticBody2D"):
		if (body.tipo == goodType):
			goodCounter += 1


func _on_area_2d_body_exited(body):
	if (body.name != "StaticBody2D"):
		if (body.tipo == goodType):
			goodCounter -= 1
