extends Area2D

var entree11 := false

func _on_11_body_entered(body: PhysicsBody2D):
	entree11 = true

func _on_11_body_exited(body):
	entree11 = false

func _process(delta):
	if entree11 == true:
		if Input.is_action_just_pressed("up"):
			Transition.Change_Niveau("res://Scene/Monde 1/Niveau 1/Niveau 1-0.tscn")

