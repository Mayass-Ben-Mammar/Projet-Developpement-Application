extends Button

func _on_PlayButton_pressed():
	Global.lives = Global.max_lives
	get_tree().change_scene("res://Scene/Niveau 0.tscn")
