extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Test Perso/Camera2D".limit_top = -320
	$"Test Perso/Camera2D".limit_right = 960*3
	$GUI/HUD/Fleur3.hide()
	if save.Fleur12 == 1:
		$Fleur.queue_free()
		$GUI/HUD/Fleur1A.show()
	if save.Fleur13 == 1:
		$Fleur2.queue_free()
		$GUI/HUD/Fleur2A.show()

func _on_Fleur_FleurRecuperer(_val):
	save.Fleur12 = 1
	Global.sauvegarder()


func _on_Fleur2_FleurRecuperer(_val):
	save.Fleur13 = 1
	Global.sauvegarder()


