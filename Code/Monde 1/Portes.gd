extends TileMap

onready var save = Global.J_donnees

func _ready():
	if save.N11 == 1:
		set_cell(7,11, 0)
	if save.N12 == 1:
		set_cell(11,11, 0)
