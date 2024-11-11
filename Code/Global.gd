extends Node

var max_lives = 4
var lives = max_lives
var hud

func lose_life():
	lives -= 1
	hud.Load_hearts()
	if lives <= 0:
		get_tree().change_scene("res://Scene/Perdu.tscn")
