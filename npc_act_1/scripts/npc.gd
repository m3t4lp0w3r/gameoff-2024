extends CharacterBody2D

@export var dialog : Array[DialogText]
@export var trigger_id : String

@onready var prompt_label = $Label

func _ready() -> void:
	if TriggersSystem.check_trigger(trigger_id, true):
		queue_free()

func _on_interactable_player_enter() -> void:
	prompt_label.show()

func _on_interactable_player_exit() -> void:
	prompt_label.hide()

func _on_interactable_interacted() -> void:
	if TriggersSystem.check_trigger(trigger_id, true):
		return
	
	EventSystem.cutscene_started.emit()
	DialogueSystem.start_dialog(dialog)
	TriggersSystem.update_trigger(trigger_id, true)
