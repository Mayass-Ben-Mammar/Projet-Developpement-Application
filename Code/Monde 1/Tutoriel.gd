extends Control

var mouvement_tut = false
var saut_tut = false
var laser_tut = false
var fonce_tut = false

func _on_Mouvement2_body_entered(body):
	mouvement_tut = true
		


func _on_Saut2_body_entered(body):
	saut_tut = true


func _on_Laser2_body_entered(body):
	laser_tut = true


func _on_Fonce2_body_entered(body):
	if body.Velocity.x == 500:
		fonce_tut = true

func _physics_process(delta):
	if (Input.is_action_just_pressed("left") or Input.is_action_just_pressed("right")) and mouvement_tut == true:
		$Mouvement.add_color_override("font_color", Color("#189f00"))
	if Input.is_action_just_pressed("jump") and saut_tut == true:
		$Saut.add_color_override("font_color", Color("#189f00"))
	if Input.is_action_just_pressed("fire") and laser_tut == true:
		$Laser.add_color_override("font_color", Color("#189f00"))
	if (Input.is_action_just_pressed("left") or Input.is_action_just_pressed("right")) and fonce_tut == true:
		$Fonce.add_color_override("font_color", Color("#189f00"))

