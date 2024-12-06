extends Control


func _ready():
	Global.NB_Fleur = 0
	Global.Compteur(1)
	$NBFleur.text = str(Global.NB_Fleur)
