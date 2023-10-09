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
		get_parent().get_node("text").txt = "The red container will contain the silicon, it is used for assembling circuits. The Blue one represents Quartz, this will be used for the construction of the domes. And the Green one represents the Calcium Carbonate, used for construction."
		get_parent().get_node("text").text = ""
		get_parent().get_node("text").iter = 0
		get_parent().get_node("text").get_node("intialTimer").start()
