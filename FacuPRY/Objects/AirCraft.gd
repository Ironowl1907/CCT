extends CharacterBody2D


var Yvel: float = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("Down") and Yvel < 200):
		Yvel += 5
	if (Input.is_action_pressed("Up") and Yvel > -200):
		Yvel -= 5
	
	position.y += Yvel * delta
	if (Yvel > 0):
		Yvel -= 2
	if (Yvel < 0):
		Yvel += 2
		
	print (Yvel)
