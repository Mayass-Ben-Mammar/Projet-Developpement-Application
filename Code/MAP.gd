extends Node

onready var save = Global.J_donnees

var monde_actuelle = 1

func _ready():
	if save.premiere_fois == true:
		premiereFois()
	else:
		$CanvasLayer/Nuage1.hide()

func _physics_process(delta):
	match monde_actuelle:
		1:
			$CanvasLayer/Fleche1.show()
			if (Input.is_action_just_pressed("right") or Input.is_action_just_pressed("down"))and save.M2 == 1:
				monde_actuelle = 2
				$CanvasLayer/Fleche1.hide()
			elif Input.is_action_just_pressed("up") and save.M5 == 1:
				monde_actuelle = 5
				$CanvasLayer/Fleche1.hide()
			if Input.is_action_just_pressed("jump") and save.premiere_fois == false:
				Transition.Change_Niveau("res://Scene/Monde 1/HUB1.tscn")
			elif Input.is_action_just_pressed("jump") and save.premiere_fois == true:
				save.premiere_fois = false
				Global.sauvegarder()
				Transition.Change_Niveau("res://Scene/Monde 1/Niveau 1/Niveau 1-0.tscn")
		2:
			$CanvasLayer/Fleche2.show()
			if Input.is_action_just_pressed("right") and save.M3 == 1:
				monde_actuelle = 3
				$CanvasLayer/Fleche2.hide()
			elif Input.is_action_just_pressed("left") or Input.is_action_just_pressed("up"):
				monde_actuelle = 1
				$CanvasLayer/Fleche2.hide()
		3:
			$CanvasLayer/Fleche3.show()
			if (Input.is_action_just_pressed("right") or Input.is_action_just_pressed("up")) and save.M4 == 1:
				monde_actuelle = 4
				$CanvasLayer/Fleche3.hide()
			elif Input.is_action_just_pressed("left") and save.M2 == 1:
				monde_actuelle = 2
				$CanvasLayer/Fleche3.hide()
		4:
			$CanvasLayer/Fleche4.show()
			if Input.is_action_just_pressed("left") and save.M5 == 1:
				monde_actuelle = 5
				$CanvasLayer/Fleche4.hide()
			elif Input.is_action_just_pressed("down") and save.M3 == 1:
				monde_actuelle = 3
				$CanvasLayer/Fleche4.hide()
		5:
			$CanvasLayer/Fleche5.show()
			if Input.is_action_just_pressed("left"):
				monde_actuelle = 1
				$CanvasLayer/Fleche5.hide()
			elif Input.is_action_just_pressed("right") and save.M4 == 1:
				monde_actuelle = 4
				$CanvasLayer/Fleche5.hide()

func premiereFois():
	yield(get_tree().create_timer(1.0), "timeout")
	$CanvasLayer/AnimationPlayer.play("MontrerMonde1")
	$CanvasLayer/Labo.show()
