extends Node2D

var items_array = []
@onready var inventory_grid = %GridContainer

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
	var item_index = items_array.find(id)
	items_array.remove_at(item_index)
	var child_count = inventory_grid.get_child_count()
	for i in range(child_count -1, -1, -1):
		var child = inventory_grid.get_child(i)
		if i == item_index:
			inventory_grid.remove_child(child)
	print("inventory_drop", id)

func check_item(id: int):
	for item in items_array:
		if item == id:
			return item
