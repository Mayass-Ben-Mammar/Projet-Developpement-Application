extends Area2D

var entree33 := false

func _ready():
	entree33 = false

func _on_N33_body_entered(_body : PhysicsBody2D):
	entree33 = true

func _on_N33_body_exited(_body):
	entree33 = false

func _process(_delta):
	if entree33 == true and Input.is_action_just_pressed("up"):
		Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-3.tscn")

