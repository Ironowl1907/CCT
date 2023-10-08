extends RichTextLabel

@export var txt = ""
var iter = 0

# Called when the node enters the scene tree for the first time.
func _on_intial_timer_timeout():
	$textFiller.start()

func _on_text_filler_timeout():
	if iter != txt.length():
		text += txt[iter]
		iter += 1
	$textFiller.start()
