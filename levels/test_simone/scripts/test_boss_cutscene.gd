extends Node2D

@onready var animation_controller = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_controller.play("boss_walk_talk")
	pass # Replace with function body.

func start_cutscene():
	EventSystem.cutscene_started.emit()

func end_cutscene():
	EventSystem.cutscene_finished.emit()
