extends Node2D

@onready var dialogue_box = $CanvasLayer/Control
@onready var text_label = $CanvasLayer/Control/DialogueBox/DialogueText
@onready var image_character = $CanvasLayer/Control/DialogueBox/Character
@onready var name_character = $CanvasLayer/Control/DialogueBoxName/DialogueName

@export var speed_text : float
var dialog_data : Array[DialogText]

var text_index = 0
var dialog_index = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialogue_box.hide()
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dialogue_box.is_visible_in_tree():
		text_label.visible_characters += speed_text
		dialog_data[dialog_index]
		for dialog in dialog_data:
			var dialog_size = dialog.dialogue_text.size()
			if Input.is_action_just_pressed("interact"):
				if text_label.visible_ratio < 1:
					text_label.visible_characters = -1
				elif text_label.visible_ratio >= 1 :
					if text_index < dialog_size - 1:
						text_index = text_index + 1
						text_label.text = dialog.dialogue_text[text_index]
						text_label.visible_characters = 0
						text_label.visible_ratio = 0
				elif dialog_index < dialog_data.size() - 1:
					dialog_index += 1
				else:
					hide()
					dialog_index = 0
					
					

func start_dialog(dialog : DialogText):
	dialogue_box.show()
	text_label.text = dialog.dialogue_text[text_index]
	image_character.texture = dialog.character_image
	name_character.text = dialog.text_name
	
