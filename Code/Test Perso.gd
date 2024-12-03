extends KinematicBody2D

enum States{AIR = 1, FLOOR, WALL}
var state = States.FLOOR

var roule_son = load("res://Assets/Son/260778__squirmtheverm__rolling-ball-loop.wav")
var fonce_son = load("res://Assets/Son/fonce.wav")
var saut_son = load("res://Assets/Son/saut.wav")

var SPEED = 200
const RUNSPEED = 500
const GRAVITY = 30
const JFORCE = -1000
var Velocity = Global.position
var Coins = 0
var hurt = 0
var double_tap = false
var cours = false
var fonce_roule = "Roule"
var direction = 1 

const LASER = preload("res://Scene/Laser.tscn")

func _physics_process(delta):
	
	match state:
		States.AIR:
			if is_on_floor():
				state = States.FLOOR
				continue
			if Velocity.y < 0:
				$Sprite.play("Saute")
			else:
				$Sprite.play("Tombe")
			if Input.is_action_pressed("right"):
				Velocity.x = SPEED
				$Sprite.flip_h = false
			elif Input.is_action_pressed("left"):
				Velocity.x = -SPEED
				$Sprite.flip_h = true
			else:
				Velocity.x = lerp(Velocity.x, 0, 0.1)
			move_and_fall()
			Fire()
		States.FLOOR:
			if not is_on_floor():
				state = States.AIR
			if cours == true:
				SPEED = RUNSPEED
				fonce_roule = "Fonce"
				$AudioStreamPlayer.stream = fonce_son
			else:
				SPEED = 200
				fonce_roule = "Roule"
				$AudioStreamPlayer.stream = roule_son
			if Input.is_action_pressed("right"):
				if double_tap == true:
					cours = true
				elif is_on_wall():
					cours = false
				Velocity.x = SPEED
				$Sprite.play(fonce_roule)
				$Sprite.flip_h = false
				$AudioStreamPlayer.play()
			elif Input.is_action_pressed("left"):
				if double_tap == true:
					cours = true
				elif is_on_wall():
					cours = false
				Velocity.x = -SPEED
				$Sprite.play(fonce_roule)
				$Sprite.flip_h = true
				$AudioStreamPlayer.play()
			else:
				Velocity.x = lerp(Velocity.x, 0, 0.1)
				$Sprite.play("Inactif")
			if Input.is_action_just_pressed("jump"):
				$AudioStreamPlayer.stream = saut_son
				$AudioStreamPlayer.play()
				Velocity.y = JFORCE
				state = States.AIR
			if Input.is_action_just_pressed("down"):
				position.y += 1
			if Input.is_action_just_released("right"):
				cours = false
				double_tap = true
				$Courir.start()
			if Input.is_action_just_released("left"):
				cours = false
				double_tap = true
				$Courir.start()
			move_and_fall()
			Fire()


func Fire():
	if Input.is_action_just_pressed("fire"):
		if $Sprite.flip_h == true:
			direction = -1
		else :
			direction = 1
		var f = LASER.instance()
		f.direction = direction
		get_parent().add_child(f)
		f.D_ou_G(direction)
		f.position.y = position.y + 5
		f.position.x = position.x + 52 * direction

func move_and_fall():
	Velocity.y = Velocity.y + GRAVITY
	Velocity = move_and_slide(Velocity, Vector2.UP)

func _on_Fall_zone_body_entered(body):
	get_tree().change_scene("res://Scene/Perdu.tscn")


func bounce():
	Velocity.y = JFORCE / 2


func mal(var posx):
	Velocity.y = JFORCE / 3
	if position.x < posx:
		Velocity.x = -800
	elif position.x > posx:
		Velocity.x = 800
	Input.action_release("left")
	Input.action_release("right")
	set_modulate(Color(2, 0, 0, 1))
	set_collision_layer_bit(0, false)
	hurt = 15
	$Timer.start()


func _on_Timer_timeout():
	hurt -= 1
	if hurt == 0:
		$Timer.stop()
		set_modulate(Color(1, 1, 1, 1))
		set_collision_layer_bit(0, true)
	else:
		set_modulate(Color(10, 10, 10, 1) if hurt % 2 == 0 else Color(1, 1, 1, 1))


func Clignement():
	$Clignement.start()


func _on_Clignement_timeout():
	$Sprite.play("Clignement")


func _on_Courir_timeout():
	double_tap = false
