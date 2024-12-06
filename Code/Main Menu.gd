extends Node

onready var save = Global.J_donnees
var valM = 0
var valS = 0

func _ready():
	$CanvasLayer/Container.hide()
	Musique.jouer_music(2)

func _physics_process(delta):
	Global.NB_Fleur = 0
	Global.Compteur(1)
	if Input.is_action_just_pressed("jump"):
		_on_Jouer_pressed()
	if Input.is_action_just_pressed("pause"):
		_on_Quitter_pressed()


func _on_Jouer_pressed():
	if save.premiere_fois == true:
		Transition.Change_Niveau("res://Scene/Cinematique 1.tscn")
	else:
		Transition.Change_Niveau("res://Scene/MAP.tscn")

func _on_Quitter_pressed():
	get_tree().quit()

func _on_Effacer_pressed():
	Global.J_donnees = null
	Global.effacer()
	Transition.Change_Niveau("res://Scene/Main Menu.tscn")


func _on_Option_pressed():
	$CanvasLayer/Container.show()

func _on_Retour_pressed():
	$CanvasLayer/Container.hide()


func _on_HSlider_value_changed(value):
	valM = value
	$"/root/Musique/AudioStreamPlayer".set_volume_db(valM)

func _on_HSlider2_value_changed(value):
	valS = value
	print(is_instance_valid($"/root/MATOS/AudioStreamPlayer"))
	$"/root/MATOS/AudioStreamPlayer".set_volume_db(valS)


func _on_Secret_pressed():
	if Global.NB_Fleur == 7:
		Transition.Change_Niveau("res://Scene/Secret.tscn")
		
