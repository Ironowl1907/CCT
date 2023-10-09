extends Button

var doIt = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	if (doIt):
		doIt = false
		get_parent().get_node("text").txt = "Thank you crewman for your help in this trip. Your effort has been very helpful in our colonization process, now rest and enjoy TITAN."
		get_parent().get_node("text").text = ""
		get_parent().get_node("text").iter = 0
		get_parent().get_node("text").get_node("intialTimer").start()
	else:
		get_tree().quit()
