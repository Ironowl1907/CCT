extends Node

var t1
var t2
var t3

func _ready():
	t1 = $tacho
	t2 = $tacho2
	t3 = $tacho3

func _process(_delta):
	if (t1.goodCounter >= 2 and t2.goodCounter >= 2 and t3.goodCounter >= 2):
		print("SO!")
