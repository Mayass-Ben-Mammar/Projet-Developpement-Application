extends Area2D

onready var save = Global.J_donnees
var entree14 := false

func _on_14_body_entered(_body: PhysicsBody2D):
	entree14 = true

func _on_14_body_exited(_body):
	entree14 = false

func _process(_delta):
	if entree14 == true and save.N13 == 1:
		if Input.is_action_just_pressed("up"):
			Musique.jouer_music(3)
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 4/Niveau 4-0.tscn")

