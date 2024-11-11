extends ColorRect


func _process(delta: float) -> void:
	if TriggersSystem.check_trigger("fade_in", true):
		print("fade in")
		
	else:
		color = 0

	
