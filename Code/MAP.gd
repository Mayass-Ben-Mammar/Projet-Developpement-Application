extends Node

var monde_actuelle = 1

func _ready():
	premiereFois()


func _physics_process(delta):
	print(monde_actuelle)
	match monde_actuelle:
		1:
			$CanvasLayer/Fleche1.show()
			if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("down"):
				monde_actuelle = 2
				$CanvasLayer/Fleche1.hide()
			elif Input.is_action_just_pressed("up"):
				monde_actuelle = 5
				$CanvasLayer/Fleche1.hide()
		2:
			$CanvasLayer/Fleche2.show()
			if Input.is_action_just_pressed("right"):
				monde_actuelle = 3
				$CanvasLayer/Fleche2.hide()
			elif Input.is_action_just_pressed("left") or Input.is_action_just_pressed("up"):
				monde_actuelle = 1
				$CanvasLayer/Fleche2.hide()
		3:
			$CanvasLayer/Fleche3.show()
			if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("up"):
				monde_actuelle = 4
				$CanvasLayer/Fleche3.hide()
			elif Input.is_action_just_pressed("left"):
				monde_actuelle = 2
				$CanvasLayer/Fleche3.hide()
		4:
			$CanvasLayer/Fleche4.show()
			if Input.is_action_just_pressed("left"):
				monde_actuelle = 5
				$CanvasLayer/Fleche4.hide()
			elif Input.is_action_just_pressed("down"):
				monde_actuelle = 3
				$CanvasLayer/Fleche4.hide()
		5:
			$CanvasLayer/Fleche5.show()
			if Input.is_action_just_pressed("left"):
				monde_actuelle = 1
				$CanvasLayer/Fleche5.hide()
			elif Input.is_action_just_pressed("right"):
				monde_actuelle = 4
				$CanvasLayer/Fleche5.hide()

func premiereFois():
	yield(get_tree().create_timer(1.0), "timeout")
	$CanvasLayer/AnimationPlayer.play("MontrerMonde1")
	$CanvasLayer/Labo.show()
