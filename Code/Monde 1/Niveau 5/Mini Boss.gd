extends Area2D

var tirer = 1

func _physics_process(delta):
	pass


func _on_Mini_Boss_body_entered(body):
	$AnimationPlayer.play("Ouchies")
	print("test")
