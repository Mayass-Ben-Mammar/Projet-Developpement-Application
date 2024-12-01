extends Node2D


func _ready():
	$"Test Perso/Camera2D".limit_top = -64
	$"Test Perso/Camera2D".limit_right = 960*3
