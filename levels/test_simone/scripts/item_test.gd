extends StaticBody2D

@onready var sprite = $Sprite2D2

var color = 0;

func _on_interactable_interacted() -> void:
	print("player interaction with", name)
	if color == 0:
		sprite.modulate = Color.RED
		color = 1
	elif color == 1:
		sprite.modulate = Color.BLUE
		color = 0
	pass # Replace with function body.
