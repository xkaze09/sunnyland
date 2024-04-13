extends Node2D


func _ready():
	#Utils.saveGame()
	Utils.loadGame()

func _on_button_2_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
