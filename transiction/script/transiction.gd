extends Node2D

@onready var animation_player = $CanvasLayer/TransictionScene/AnimationPlayer

func _ready() -> void:
	TriggersSystem.update_trigger("fade_in", true)

func _process(delta: float) -> void:
	if TriggersSystem.check_trigger("fade_out", true):
		animation_player.play("fade_out")
	elif TriggersSystem.check_trigger("fade_in", true):
		animation_player.play("fade_in")



func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_in":
		TriggersSystem.update_trigger("fade_in", false)
	elif anim_name == "fade_out":
		TriggersSystem.update_trigger("fade_out", false)
		animation_player.pause()
		LevelSystem.load_level("Test Simon")
