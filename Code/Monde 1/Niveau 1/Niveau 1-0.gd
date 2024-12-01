extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Test Perso/Camera2D".limit_top = -64
	$"Test Perso/Camera2D".limit_right = 960*3
	$GUI/HUD/Fleur2.hide()
	$GUI/HUD/Fleur3.hide()
	if save.Fleur11 == 1:
		$Fleur.queue_free()
		$GUI/HUD/Fleur1A.show()

func _physics_process(delta):
	pass

func _on_Fleur_FleurRecuperer(val):
	save.Fleur11 = 1
	Global.sauvegarder()
