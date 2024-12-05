extends Node2D

onready var save = Global.J_donnees

func _ready():
	$"Boss signal/Test Perso/Camera2D".limit_top = -24*32
	$"Boss signal/Test Perso/Camera2D".limit_right = 960
	$GUI/HUD/Fleur2.hide()
	$GUI/HUD/Fleur3.hide()
	$N5VH/CollisionShape2D.set_disabled(true)
	$Portes.hide()
	$Fleur/CollisionShape2D.set_disabled(true)
	$Fleur.hide()
	if save.Fleur17 == 1:
		$Fleur.queue_free()
		$GUI/HUD/Fleur1A.show()


func _physics_process(delta):
	if is_instance_valid($"Mini Boss") == false:
		$N5VH/CollisionShape2D.set_disabled(false)
		$Portes.show()
		if save.Fleur17 == 0:
			$Fleur/CollisionShape2D.set_disabled(false)
			$Fleur.show()


func _on_Fleur_FleurRecuperer(val):
	save.Fleur17 = 1
	Global.sauvegarder()
	

func _on_Boss_signal_body_entered(body : PhysicsBody2D):
	$"Boss signal/Test Perso/Camera2D".limit_top = 0
	$"Boss signal/Test Perso/Camera2D".limit_right = 960
	$"Mini Boss/AnimationPlayer".play("Debut")
	if is_instance_valid($"Dossier Mechant/Mechant") == true:
		$"Dossier Mechant/Mechant".queue_free()
	if is_instance_valid($"Dossier Mechant/Mechant2") == true:
		$"Dossier Mechant/Mechant2".queue_free()
	if is_instance_valid($"Dossier Mechant/Mechant3") == true:
		$"Dossier Mechant/Mechant3".queue_free()
