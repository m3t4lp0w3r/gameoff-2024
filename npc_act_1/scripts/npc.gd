extends CharacterBody2D

@export var dialog : Array[DialogText]
@export var sprite : Texture2D

@onready var prompt_label = $Label

func _ready() -> void:
	$Sprite2D.texture = sprite
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
