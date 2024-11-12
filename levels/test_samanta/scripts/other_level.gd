extends Node2D





func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == %Player:
		TransictionScene.fade_out()
		LevelSystem.load_level("Test Samy")
		$Area2D.queue_free()
