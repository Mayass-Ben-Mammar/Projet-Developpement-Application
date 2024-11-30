extends Node

var monde_actuelle = 1

func _ready():
	$CanvasLayer/Fleche1.show()


func _physics_process(delta):
	print(monde_actuelle)
	match monde_actuelle:
		1:
			if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("down"):
				monde_actuelle = 2
			elif Input.is_action_just_pressed("up"):
				monde_actuelle = 5
		2:
			if Input.is_action_just_pressed("right"):
				monde_actuelle = 3
			elif Input.is_action_just_pressed("left") or Input.is_action_just_pressed("up"):
				monde_actuelle = 1
		3:
			if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("up"):
				monde_actuelle = 4
			elif Input.is_action_just_pressed("left"):
				monde_actuelle = 2
		4:
			if Input.is_action_just_pressed("left"):
				monde_actuelle = 5
			elif Input.is_action_just_pressed("down"):
				monde_actuelle = 3
		5:
			if Input.is_action_just_pressed("left"):
				monde_actuelle = 1
			elif Input.is_action_just_pressed("right"):
				monde_actuelle = 4
