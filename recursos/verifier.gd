extends Node

var t1
var t2
var t3

func _ready():
	t1 = $tacho
	t2 = $tacho2
	t3 = $tacho3

func _process(_delta):
	if (t1.goodCounter >= 0 and t2.goodCounter >= 0 and t3.goodCounter >= 0):
		$transitioner.play("fade")


func _on_transitioner_animation_finished(anim_name):
	get_parent().get_parent().c2()
