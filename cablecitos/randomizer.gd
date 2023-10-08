extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	var listOfShit = [1, 2, 3, 4]
	
	for i in range(1,5):
		var ind = randi_range(0, listOfShit.size() - 1)
		var node = get_node(str(i))
		
		if (listOfShit[ind] == 1):
			node.get_node("Sprite2D").texture = load("res://sprites/piedra amarilla.png")
			node.type = 1
		elif (listOfShit[ind] == 2):
			node.get_node("Sprite2D").texture = load("res://sprites/piedra celeste.png")
			node.type = 2
		elif (listOfShit[ind] == 3):
			node.get_node("Sprite2D").texture = load("res://sprites/piedra roja.png")
			node.type = 3
		else:
			node.get_node("Sprite2D").texture = load("res://sprites/piedra verde.png")
			node.type = 4
			
		listOfShit.erase(listOfShit[ind])
