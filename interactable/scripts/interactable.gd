extends Node
class_name Interactable

signal interacted
signal player_enter
signal player_exit

func interact() :
	interacted.emit()

func player_enter_trigger() :
	player_enter.emit()
	
func player_exit_trigger() :
	player_exit.emit()
