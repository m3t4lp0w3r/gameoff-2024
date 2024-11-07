extends Node2D

var items_array = []


func pick_up(id: String):
	items_array.append(id)
	print("inventory_pick_up", items_array)

func drop_item(id: String):
	var item_index = items_array.find(id)
	items_array.remove_at(item_index)
	print("inventory_drop", id)

func check_item(id: String):
	for item in items_array:
		if item == id:
			return item
