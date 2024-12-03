extends Area2D

onready var save = Global.J_donnees
var entree = false

func _on_N2VH_body_entered(body : PhysicsBody2D):
	entree = true

func _on_N2VH_body_exited(body):
	entree = false

func _process(delta):
	if entree == true:
		if Input.is_action_just_pressed("up"):
			save.N13 = 1
			Global.sauvegarder()
			Transition.Change_Niveau("res://Scene/Monde 1/HUB1.tscn")

