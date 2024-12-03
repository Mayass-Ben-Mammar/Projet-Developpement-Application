extends TileMap

onready var save = Global.J_donnees

func _ready():
	if save.N11 == 1:
		set_cell(7,11, 0)
	if save.N12 == 1:
		set_cell(11,11, 0)
	if save.N13 == 1:
		set_cell(16,11, 0)
	if save.N14 == 1:
		set_cell(20,11, 0)
	if save.N15 == 1:
		set_cell(24,11, 0)
