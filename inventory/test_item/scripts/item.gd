extends Node2D

@export var dialog : DialogText
var dialog_start = false

#
### Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		DialogueSystem.start_dialog(dialog)




	
	
