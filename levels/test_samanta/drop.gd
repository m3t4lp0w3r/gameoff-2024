extends Node2D
@export var id : int
var drop_item = false
var items = InventorySystem.items_array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if drop_item and Input.is_action_just_pressed("interact"):
		if InventorySystem.items_array.size() > 0:
			for item in items:
				if item == id:
					InventorySystem.drop_item(id)
					$Sprite2D.show()
					$Area2D.hide()
					drop_item = false
				else:
					$Label2.show()
		else:
			$Label2.show()


func _on_area_2d_mouse_entered() -> void:
	drop_item = true
	$Label3.show()


func _on_area_2d_mouse_exited() -> void:
	drop_item = false
	$Label2.hide()
	$Label3.hide()
