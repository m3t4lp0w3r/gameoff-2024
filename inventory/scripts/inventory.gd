extends Node2D

var items_array = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func pick_up(id: int):
	items_array.append(id)
	print("inventory_pick_up", items_array)

func drop_item(id: int):
	items_array.remove_at(id)
	print("inventory_drop", items_array)
