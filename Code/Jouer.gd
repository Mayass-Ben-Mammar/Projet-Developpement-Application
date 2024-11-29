extends Button

func _on_Jouer_pressed():
	Global.lives = Global.max_lives
	Transition.Change_Niveau("res://Scene/Niveau 0.tscn")

func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		_on_Jouer_pressed()
