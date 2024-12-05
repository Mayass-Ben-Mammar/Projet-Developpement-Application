extends Node


func _ready():
	Musique.jouer_music(2)

func _physics_process(delta):
	if Input.is_action_just_pressed("pause"):
		Transition.Change_Niveau("res://Scene/Home Menu.tscn")
