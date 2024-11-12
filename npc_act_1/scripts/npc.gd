extends CharacterBody2D

@export var dialog : Array[DialogText]

@onready var prompt_label = $Label

func _ready() -> void:
	if TriggersSystem.check_trigger("talked", true):
		hide()
		
func _on_interactable_player_enter() -> void:
	prompt_label.show()


func _on_interactable_player_exit() -> void:
	prompt_label.hide()



func _on_interactable_interacted() -> void:
	EventSystem.cutscene_started.emit()
	DialogueSystem.start_dialog(dialog)
	TriggersSystem.update_trigger("talked", true)
