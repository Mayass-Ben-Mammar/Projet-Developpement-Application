extends Area2D

signal FleurRecuperer
export var NB := 1

func _ready():
	$AnimationPlayer.play("Normal")

func _on_Fleur_body_entered(_body):
	$AnimationPlayer.play("Miam")
	emit_signal("FleurRecuperer", NB)
	set_collision_mask_bit(0, false)


func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
