extends Area2D

var entree32 = false

func _ready():
	entree32 = false

func _on_N32_body_entered(body : PhysicsBody2D):
	entree32 = true

func _on_N32_body_exited(body):
	entree32 = false

func _process(delta):
	if entree32 == true and Input.is_action_just_pressed("up"):
		Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-0.tscn")

