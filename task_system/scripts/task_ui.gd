extends Control

@export var icon_check : Texture2D
@export var icon_uncheck : Texture2D

@onready var label : Label = $Panel/Label
@onready var icon_rect : TextureRect = $Panel/TextureRect

func set_ui(task : Task):
	label.text = task.description
	if task.complete:
		icon_rect.texture = icon_check
	else:
		icon_rect.texture = icon_uncheck
