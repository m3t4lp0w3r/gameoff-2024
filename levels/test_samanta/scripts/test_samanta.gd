extends Node2D




func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == %Player:
		TriggersSystem.update_trigger("fade_out", true)
		
