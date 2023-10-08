extends Node

var t1
var t2
var t3

func _ready():
	t1 = $tacho
	t2 = $tacho2
	t3 = $tacho3

func _process(delta):
	if (t1.goodCounter >= 8 and t2.goodCounter >= 8 and t3.goodCounter >= 8):
		print("SO!")
