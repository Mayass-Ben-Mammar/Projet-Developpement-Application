extends Area2D

var entree3 := false

func _ready():
	entree3 = false

func _on_Retour_N3_body_entered(body : PhysicsBody2D):
	entree3 = true

func _on_Retour_N3_body_exited(body):
	entree3 = false

func _process(delta):
	if entree3 == true and Input.is_action_just_pressed("up"):
		Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-0.tscn")



