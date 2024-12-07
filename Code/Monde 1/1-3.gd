extends Area2D

onready var save = Global.J_donnees
var entree13 := false

func _on_13_body_entered(_body: PhysicsBody2D):
	entree13 = true

func _on_13_body_exited(_body):
	entree13 = false

func _process(_delta):
	if entree13 == true and save.N12 == 1:
		if Input.is_action_just_pressed("up"):
			Musique.jouer_music(3)
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-0.tscn")

