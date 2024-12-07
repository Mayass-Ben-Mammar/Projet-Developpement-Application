extends Area2D

var tirer := 1
const LASER := preload("res://Scene/Laser.tscn")
var PV := 200

func _physics_process(delta):
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
		queue_free()


func _on_Timer_timeout():
	tirer = randi()
	if tirer > 0 and tirer <= 1431655765:
		var f = LASER.instance()
		f.name = "LaserM"
		f.SPEED = -1000
		f.D_ou_G(-1)
		get_parent().add_child(f)
		f.position.y = 544-80
		f.position.x = 848
	elif tirer > 1431655766 and tirer <= 2863311530:
		var f = LASER.instance()
		f.name = "LaserM"
		f.SPEED = -1000
		f.D_ou_G(-1)
		get_parent().add_child(f)
		f.position.y = 544-197
		f.position.x = 848
	elif tirer > 2863311531 and tirer <= 4294967295:
		var f = LASER.instance()
		f.name = "LaserM"
		f.SPEED = -1000
		f.D_ou_G(-1)
		get_parent().add_child(f)
		f.position.y = 544-315
		f.position.x = 848
