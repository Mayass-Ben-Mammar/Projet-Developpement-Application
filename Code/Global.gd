extends Node

const SAVE_FILE = "user://sauvegarde.save"
var J_donnees = {}

var max_lives = 200
var lives = max_lives
var hud
var dir = Directory.new()

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
			"premiere_fois": true,
			"N11": 0,  "N12": 0,  "N13": 0,  "N14": 0,  "N15": 0,  "N16": 0,  "N17": 0,  "N18": 0,  "N19": 0,  "N110": 0,
			"Fleur11": 0,  "Fleur12": 0,  "Fleur13": 0,  "Fleur14": 0,  "Fleur15": 0,  "Fleur16": 0,  "Fleur17": 0,
			"Fleur18": 0,  "Fleur19": 0,  "Fleur110": 0,  "Fleur111": 0,  "Fleur112": 0,  "Fleur113": 0,  "Fleur114": 0,
			"Fleur115": 0,
		}
		sauvegarder()
	else:
		fichier.open(SAVE_FILE, File.READ)
		J_donnees = fichier.get_var()
		fichier.close()

func effacer():
	var fichier = File.new()
	if fichier.file_exists(SAVE_FILE):
		dir.remove(SAVE_FILE)
	charger()
