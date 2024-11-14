class_name Settings
extends UIState

@onready var main_panel = $MainPanel

func enter(_msg := {}) -> void:
	main_panel.show()

func exit() -> void:
	main_panel.hide()


func _on_back_pressed():
	state_machine.change_state("MainMenu")
