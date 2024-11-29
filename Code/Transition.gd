extends Node

func Change_Niveau(Nom):
	$AnimationPlayer.play("Fade")
	yield($AnimationPlayer, "animation_finished")
	get_tree().change_scene(Nom)
	$AnimationPlayer.play_backwards("Fade")

