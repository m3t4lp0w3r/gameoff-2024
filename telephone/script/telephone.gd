extends Node2D

@onready var interact_prompt = $Label
@onready var ring_sound = $Ring
@export var dialog : Array[DialogText]

var sound = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sound = true
	if sound:
		ring_sound.play()
		
		

func _on_interactable_player_enter() -> void:
	if sound:
		interact_prompt.show()

func _on_interactable_player_exit() -> void:
	if sound:
		interact_prompt.hide()

func _on_interactable_interacted() -> void:
	if sound:
		ring_sound.stop()
		DialogueSystem.start_dialog(dialog)
		sound = false
		interact_prompt.hide()
