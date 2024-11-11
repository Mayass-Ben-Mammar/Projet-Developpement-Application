extends Area2D

signal CoinCollected

func _on_Coin_body_entered(body):
	$AnimationPlayer.play("Bounce")
	emit_signal("CoinCollected")
	set_collision_mask_bit(0, false)


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
