extends Control


func _on_exit_pressed():
	get_tree().quit() 


func _on_again_pressed():
	get_tree().change_scene_to_file("res://FacuPRY/Scenes/main.tscn")