extends Node

var max_lives = 200
var lives = max_lives
var hud
var premiere_fois = true

func lose_life(degat):
	lives -= degat
	hud.Load_hearts()
	if lives <= 0:
		get_tree().change_scene("res://Scene/Perdu.tscn")
