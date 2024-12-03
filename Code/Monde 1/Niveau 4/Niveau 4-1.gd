extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Test Perso/Camera2D".limit_top = -48*32
	$"Test Perso/Camera2D".limit_right = 960
	$GUI/HUD/Fleur3.hide()
	if save.Fleur15 == 1:
		$GUI/HUD/Fleur1A.show()
	if save.Fleur16 == 1:
		$GUI/HUD/Fleur2A.show()


func _on_Fleur_FleurRecuperer():
	save.Fleur16 = 1
	Global.sauvegarder()
