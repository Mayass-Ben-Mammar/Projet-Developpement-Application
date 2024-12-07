extends Node2D

func _ready():
	$"Test Perso/Camera2D".limit_top = 0
	$"Test Perso/Camera2D".limit_right = 960
	Global.lives = Global.max_lives
	Musique.jouer_music(3)
