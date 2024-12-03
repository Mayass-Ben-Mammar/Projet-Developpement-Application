extends Area2D

onready var save = Global.J_donnees
var entree14 = false

func _on_12_body_entered(body: PhysicsBody2D):
	entree14 = true

func _on_12_body_exited(body):
	entree14 = false

func _process(delta):
	if entree14 == true and save.N13 == 1:
		if Input.is_action_just_pressed("up"):
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 4/Niveau 4-0.tscn")

