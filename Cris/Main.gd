extends Node2D

var cut1 = preload("res://lanzamiento/balance.tscn")
var cut2 = preload("res://recursos/recursos.tscn")
var cut3 = preload("res://cablecitos/Scene/main.tscn")
var cut4 = preload("res://Cris/movie.tscn")

func _ready() -> void:
	add_child(cut2.instantiate())
