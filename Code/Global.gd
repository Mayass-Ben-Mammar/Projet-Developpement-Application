extends Node

const SAVE_FILE = "user://sauvegarde.save"
var J_donnees = {}

var max_lives = 200
var lives = max_lives
var hud
#var premiere_fois = true

func _ready():
	charger()


func lose_life(degat):
	lives -= degat
	hud.Load_hearts()
	if lives <= 0:
		get_tree().change_scene("res://Scene/Perdu.tscn")

func sauvegarder():
	var fichier = File.new()
	fichier.open(SAVE_FILE, File.WRITE)
	fichier.store_var(J_donnees)
	fichier.close()

func charger():
	var fichier = File.new()
	if not fichier.file_exists(SAVE_FILE):
		J_donnees = {
			"premiere_fois": true
		}
		sauvegarder()
	else:
		fichier.open(SAVE_FILE, File.READ)
		J_donnees = fichier.get_var()
		fichier.close()
