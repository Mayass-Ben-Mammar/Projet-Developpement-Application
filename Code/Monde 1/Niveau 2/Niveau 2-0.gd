extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Test Perso/Camera2D".limit_top = -64
	$"Test Perso/Camera2D".limit_right = 960*3
	$GUI/HUD/Fleur3.hide()
	if save.Fleur12 == 1:
		$Fleur.queue_free()
		$GUI/HUD/Fleur1A.show()
	elif save.Fleur13 == 1:
		$Fleur.queue_free()
		$GUI/HUD/Fleur2A.show()
