extends Area2D

onready var save = Global.J_donnees
var entree12 := false

func _on_12_body_entered(_body: PhysicsBody2D):
	entree12 = true

func _on_12_body_exited(_body):
	entree12 = false

func _process(_delta):
	if entree12 == true and save.N11 == 1:
		if Input.is_action_just_pressed("up"):
			Musique.jouer_music(3)
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 2/Niveau 2-0.tscn")

