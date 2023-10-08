extends Node2D

var cut1 = preload("res://recursos/recursos.tscn")
var cut2 = preload("res://cablecitos/Scene/main.tscn")
var cut3 = preload("res://lanzamiento/balance.tscn")
var cut4 = preload("res://cinematicas/c3.tscn")
var cut5 = preload("res://cinematicas/c2.tscn")
var cut6 = preload("res://FacuPRY/Scenes/main.tscn")
var cut7 = preload("res://Cris/movie.tscn")

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
	
func c5() -> void:
	get_children()[0].queue_free()
	add_child(cut5.instantiate())
	
func c6() -> void:
	get_children()[0].queue_free()
	add_child(cut6.instantiate())
	
func c7() -> void:
	get_children()[0].queue_free()
	add_child(cut7.instantiate())
	
