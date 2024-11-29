extends Node

var monde_actuelle = 1

func _ready():
	$CanvasLayer/Fleche1.show()


func _input(event):
	if event.is_action_pressed("jump"):
		print("jssssssp")
		pass
	elif event.is_action_pressed("left"):
		monde_actuelle += 1
		print(monde_actuelle)
