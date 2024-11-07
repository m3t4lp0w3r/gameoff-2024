extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_interactable_button_interacted() -> void:
	EventSystem.play_sound.emit("sfx_lvl_start", "Sfx")
	#EventSystem.play_music.emit("ev_mx_hub_v2")
	LevelSystem.load_level("Test Level")
	pass # Replace with function body.
