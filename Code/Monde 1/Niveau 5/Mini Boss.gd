extends Area2D

var tirer := 1
const LASER := preload("res://Scene/Laser.tscn")
var PV := 200
onready var save = Global.J_donnees

func _process(_delta):
	$PV.rect_size.x = PV
	if PV == 0:
		$PV.hide()
		$CollisionShape2D.set_disabled(true)
		$AnimationPlayer.play("Fini")

func _on_Mini_Boss_body_entered(body):
	if body.name == "Laser" :
		$AnimationPlayer.play("Ouchies")
		PV -= 25
	elif body.name == "Test Perso" :
		body.mal(1000)
		Global.lose_life(5)


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Debut":
		$Vide.show()
		$PV.show()
		if $Timer.is_stopped() == true:
			_on_Timer_timeout()
			$Timer.start()
	elif anim_name == 'Fini':
		save.B11 = 1
		queue_free()


func Appel_L(val):
	var f = LASER.instance()
	f.name = "LaserM"
	f.SPEED = -1000
	f.D_ou_G(-1)
	get_parent().add_child(f)
	f.position.x = 848
	f.position.y = 544-val


func _on_Timer_timeout():
	tirer = randi()
	if tirer > 0 and tirer <= 1431655765:
		Appel_L(80)
	elif tirer > 1431655766 and tirer <= 2863311530:
		Appel_L(197)
	elif tirer > 2863311531 and tirer <= 4294967295:
		Appel_L(315)
