extends Control

func _ready():
	$Timer.start()


func _on_Timer_timeout():
	Transition.Change_Niveau("res://Scene/Main Menu.tscn")
