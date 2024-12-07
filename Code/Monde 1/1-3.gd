extends Area2D

onready var save = Global.J_donnees
var entree13 := false

func _on_12_body_entered(body: PhysicsBody2D):
	entree13 = true

func _on_12_body_exited(body):
	entree13 = false

func _process(delta):
	if entree13 == true and save.N12 == 1:
		if Input.is_action_just_pressed("up"):
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-0.tscn")

