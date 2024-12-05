extends Control


func _ready():
	Global.Compteur(1)
	$NBFleur.text = str(Global.NB_Fleur)
