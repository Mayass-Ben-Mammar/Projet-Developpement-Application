extends Node2D

onready var save = Global.J_donnees
var spawn := true
var Mechant := load("res://Scene/Mechant.tscn")

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

func _on_Fleur_FleurRecuperer(val):
	save.Fleur12 = 1
	Global.sauvegarder()


func _on_Fleur2_FleurRecuperer(val):
	save.Fleur13 = 1
	Global.sauvegarder()


func _on_Area2D_body_entered(body):
	spawn()
	spawn = false

func spawn():
	if spawn == true:
		var mechant = Mechant.instance()
		mechant.position = Vector2(2500, 300)
		add_child(mechant)
		var mechant2 = Mechant.instance()
		mechant2.position = Vector2(2575, 300)
		add_child(mechant2)


