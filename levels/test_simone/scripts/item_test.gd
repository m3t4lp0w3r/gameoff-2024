extends StaticBody2D

@export var item : ItemData

var color = 0;

func _on_interactable_interacted() -> void:
	print("player interaction with", name)
	InventorySystem.pick_up(item)
	hide()
	process_mode = ProcessMode.PROCESS_MODE_DISABLED


func _on_interactable_player_enter() -> void:
	print("player entered", name)


func _on_interactable_player_exit() -> void:
	print("player exit", name)
