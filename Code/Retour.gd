extends Button

func _on_Jouer_pressed():
	Global.lives = Global.max_lives
	Transition.Change_Niveau("res://Scene/Home Menu.tscn")

func _physics_process(delta):
	if Input.is_action_just_pressed("pause"):
		_on_Jouer_pressed()
