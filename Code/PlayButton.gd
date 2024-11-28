extends Button

func _on_PlayButton_pressed():
	Global.lives = Global.max_lives
	get_tree().change_scene("res://Scene/Niveau 0.tscn")

func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		_on_PlayButton_pressed()
