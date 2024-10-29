class_name GlobalLevelSystem
extends Node2D

@export var levels_resources : Array[LevelData]
#TODO Maybe set this manually when the game is ready ?
var levels : Dictionary

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for data in levels_resources:
		levels[data.name] = data.scene

func load_level(key: String) -> void:
	if levels.has(key) :
		var level = levels[key]
		if level == null:
			printerr("LevelSystem Error level null.")
		get_tree().change_scene_to_packed(level)
	else:
		printerr("LevelSystem Error level not found.")
	pass
