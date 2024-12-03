extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Test Perso/Camera2D".limit_top = 0
	$"Test Perso/Camera2D".limit_right = 960
	$GUI/HUD/Fleur2.hide()
	$GUI/HUD/Fleur3.hide()
	if save.Fleur14 == 1:
		$GUI/HUD/Fleur1A.show()
