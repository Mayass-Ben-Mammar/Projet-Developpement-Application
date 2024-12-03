extends Area2D

var entree41 = false

func _ready():
	entree41 = false

func _on_N41_body_entered(body : PhysicsBody2D):
	entree41 = true

func _on_N41_body_exited(body):
	entree41 = false

func _process(delta):
	if entree41 == true and Input.is_action_just_pressed("up"):
		Transition.Change_Niveau("res://Scene/Monde 1/Niveau 4/Niveau 4-1.tscn")

