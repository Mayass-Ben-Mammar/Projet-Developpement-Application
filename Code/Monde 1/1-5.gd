extends Area2D

onready var save = Global.J_donnees
var entree15 := false

func _on_12_body_entered(body: PhysicsBody2D):
	entree15 = true

func _on_12_body_exited(body):
	entree15 = false

func _process(delta):
	if entree15 == true and save.N14 == 1:
		if Input.is_action_just_pressed("up"):
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 5/Niveau 5-0.tscn")

