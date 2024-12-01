extends Control

var est_en_pause = false setget en_pause

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.est_en_pause = !est_en_pause


func en_pause(val):
	est_en_pause = val
	get_tree().paused = est_en_pause
	visible = est_en_pause


func _on_Continuer_pressed():
	self.est_en_pause = false


func _on_Quitter_pressed():
	self.est_en_pause = false
	Transition.Change_Niveau("res://Scene/MAP.tscn")
