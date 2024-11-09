extends Node2D

var items_array : Array[ItemData] = []
@onready var inventory = $CanvasLayer/Control
@onready var inventory_slot = $CanvasLayer/Control/Panel/HBoxContainer

func _ready() -> void:
	#EventSystem.hide_hud.connect(hide_inventory)
	EventSystem.cutscene_started.connect(hide_inventory)
	EventSystem.cutscene_finished.connect(show_inventory)

func pick_up(data: ItemData):
	items_array.append(data)
	var slot = TextureRect.new()
	slot.texture = data.icon
	#size is a placeholder
	slot.expand_mode = TextureRect.EXPAND_FIT_WIDTH
	inventory_slot.add_child(slot)
	print(items_array)
	

func drop_item(data: ItemData):
	var item_index = items_array.find(data)
	items_array.remove_at(item_index)
	var slots = inventory_slot.get_child_count()
	for slot in range(slots -1, -1, -1):
		var child = inventory_slot.get_child(slot)
		if child.texture == data.icon:
			inventory_slot.remove_child(child)
	

func check_item(data: ItemData):
	for item in items_array:
		if item == data:
			return item

func hide_inventory():
	inventory.hide()

func show_inventory():
	inventory.show()
