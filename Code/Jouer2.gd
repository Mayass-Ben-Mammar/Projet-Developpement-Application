extends Button

func _on_Jouer_pressed():
	Global.lives = Global.max_lives
	Transition.Change_Niveau("res://Scene/MAP.tscn")

func _physics_process(delta):
	if Input.is_action_just_pressed("up"):
		_on_Jouer_pressed()
