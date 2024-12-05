extends Node

const SAVE_FILE = "user://sauvegarde.save"
var J_donnees = {}

var max_lives = 200
var lives = max_lives
var hud
var dir = Directory.new()
var position = Vector2()
var NB_Fleur = 0

func _ready():
	charger()


func lose_life(degat):
	lives -= degat
	hud.Load_hearts()
	if lives <= 0:
		get_tree().change_scene("res://Scene/Perdu.tscn")

func Compteur(val):
	for i in 15:
		var Fl = "Fleur" + str(val) + str(i+1)
		if J_donnees[Fl] == 1:
			NB_Fleur += 1


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
			"M1": 0,  "M2": 0,  "M3": 0,  "M4": 0,  "M5": 0,
			"N11": 0,  "N12": 0,  "N13": 0,  "N14": 0,  "N15": 0,  "N16": 0,  "N17": 0,  "N18": 0,  "N19": 0,  "N110": 0,
			"Fleur11": 0,  "Fleur12": 0,  "Fleur13": 0,  "Fleur14": 0,  "Fleur15": 0,  "Fleur16": 0,  "Fleur17": 0,
			"Fleur18": 0,  "Fleur19": 0,  "Fleur110": 0,  "Fleur111": 0,  "Fleur112": 0,  "Fleur113": 0,  "Fleur114": 0,
			"Fleur115": 0,
			"N21": 0,  "N22": 0,  "N23": 0,  "N24": 0,  "N25": 0,
			"Fleur21": 0,  "Fleur22": 0,  "Fleur23": 0,  "Fleur24": 0,  "Fleur25": 0,  "Fleur26": 0,  "Fleur27": 0,
			"Fleur28": 0,  "Fleur29": 0,  "Fleur210": 0,  "Fleur211": 0,  "Fleur212": 0,  "Fleur213": 0,  "Fleur214": 0,
			"Fleur215": 0,
			"N31": 0,  "N32": 0,  "N33": 0,  "N34": 0,  "N35": 0,
			"Fleur31": 0,  "Fleur32": 0,  "Fleur33": 0,  "Fleur34": 0,  "Fleur35": 0,  "Fleur36": 0,  "Fleur37": 0,
			"Fleur38": 0,  "Fleur39": 0,  "Fleur310": 0,  "Fleur311": 0,  "Fleur312": 0,  "Fleur313": 0,  "Fleur314": 0,
			"Fleur315": 0,
			"N41": 0,  "N42": 0,  "N43": 0,  "N44": 0,  "N45": 0,
			"Fleur41": 0,  "Fleur42": 0,  "Fleur43": 0,  "Fleur44": 0,  "Fleur45": 0,  "Fleur46": 0,  "Fleur47": 0,
			"Fleur48": 0,  "Fleur49": 0,  "Fleur410": 0,  "Fleur411": 0,  "Fleur412": 0,  "Fleur413": 0,  "Fleur414": 0,
			"Fleur415": 0,
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
