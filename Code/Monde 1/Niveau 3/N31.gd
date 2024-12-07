extends Area2D

var entree31 := false

func _ready():
	entree31 = false

func _on_N31_body_entered(body : PhysicsBody2D):
	entree31 = true

func _on_N31_body_exited(body):
	entree31 = false

func _process(delta):
	if entree31 == true and Input.is_action_just_pressed("up"):
		Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-1.tscn")

