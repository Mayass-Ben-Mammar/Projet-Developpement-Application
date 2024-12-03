extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Test Perso/Camera2D".limit_top = -7*32
	$"Test Perso/Camera2D".limit_right = 160*32
	$GUI/HUD/Fleur3.hide()
	if save.Fleur15 == 1:
		$Fleur.queue_free()
		$GUI/HUD/Fleur1A.show()
	if save.Fleur16 == 1:
		$GUI/HUD/Fleur2A.show()


func _on_Fleur_FleurRecuperer(val):
	save.Fleur15 = 1
	Global.sauvegarder()
