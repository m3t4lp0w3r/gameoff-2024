extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == %Player:
		LevelSystem.call_deferred("load_level", "Other level")
	pass # Replace with function body.
