extends Node

var accueil = load("res://Assets/Son/516912__xythe__chill-tune-for-a-game.wav")
var menu = load("res://Assets/Son/761287__lightmister__electronic-fluids.ogg")

func _ready():
	pass

func jouer_music(nb):
	if nb == 1:	
		$AudioStreamPlayer.stream = accueil
		$AudioStreamPlayer.play()
	elif nb == 2:
		$AudioStreamPlayer.stream = menu
		$AudioStreamPlayer.play()
