extends Control

var Nb_Coins = 0

func _ready():
	$NCoins.text = String(Nb_Coins)
	Load_hearts()
	Global.hud = self

func _on_CoinCollected():
	Nb_Coins += 1
	_ready()
	if Nb_Coins == 3:
		get_tree().change_scene("res://Scene/Bravo.tscn")

func Load_hearts():
	$coeurplein.rect_size.x = Global.lives * 64


