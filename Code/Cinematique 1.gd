extends Control


func _ready():
	$AnimationPlayer.play("Debut")


func _on_AnimationPlayer_animation_finished(_anim_name):
	Transition.Change_Niveau("res://Scene/MAP.tscn")
