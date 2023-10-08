extends Node2D

var cut1 = preload("res://recursos/recursos.tscn")
var cut2 = preload("res://cablecitos/Scene/main.tscn")
var cut3 = preload("res://lanzamiento/balance.tscn")
var cut4 = preload("res://Cris/movie.tscn")

func _ready() -> void:
	print(get_children())
	add_child(cut1.instantiate())

func c2() -> void:
	get_children()[0].queue_free()
	add_child(cut2.instantiate())
	
func c3() -> void:
	get_children()[0].queue_free()
	add_child(cut3.instantiate())
	
func c4() -> void:
	get_children()[0].queue_free()
	add_child(cut4.instantiate())
	
