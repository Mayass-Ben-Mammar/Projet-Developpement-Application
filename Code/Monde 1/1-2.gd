extends Area2D

var entree = false

func _on_12_body_entered(body: PhysicsBody2D):
	entree = true

func _on_12_body_exited(body):
	entree = false

func _process(delta):
	if entree == true:
		if Input.is_action_just_pressed("up"):
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 2/Niveau 2-0.tscn")

