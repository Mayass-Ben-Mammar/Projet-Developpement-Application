extends Area2D

onready var save = Global.J_donnees
var entree := false

func _on_N1VH_body_entered(_body : PhysicsBody2D):
	entree = true

func _on_N1VH_body_exited(_body):
	entree = false

func _process(_delta):
	if entree == true and Input.is_action_just_pressed("up"):
		save.N11 = 1
		Global.sauvegarder()
		Transition.Change_Niveau("res://Scene/Monde 1/HUB1.tscn")

