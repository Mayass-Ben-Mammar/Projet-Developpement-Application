extends Area2D

var entree32 := false

func _ready():
	entree32 = false

func _on_N32_body_entered(_body : PhysicsBody2D):
	entree32 = true

func _on_N32_body_exited(_body):
	entree32 = false

func _process(_delta):
	if entree32 == true and Input.is_action_just_pressed("up"):
		Transition.Change_Niveau("res://Scene/Monde 1/Niveau 3/Niveau 3-2.tscn")

