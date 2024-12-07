extends Button

func _on_PlayButton_pressed():
	Global.lives = Global.max_lives
	Transition.Change_Niveau("res://Scene/Main Menu.tscn")

func _physics_process(_delta):
	if Input.is_action_just_pressed("jump"):
		_on_PlayButton_pressed()
