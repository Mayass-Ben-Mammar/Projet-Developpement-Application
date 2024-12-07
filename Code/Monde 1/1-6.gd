extends Area2D

onready var save = Global.J_donnees
var entree16 := false

func _on_16_body_entered(body: PhysicsBody2D):
	entree16 = true

func _on_16_body_exited(body):
	entree16 = false

func _process(delta):
	if entree16 == true and save.N15 == 1:
		if Input.is_action_just_pressed("up"):
			Transition.Change_Niveau("res://Scene/DEMO.tscn")

