extends Node2D
@export var id : int
var pick_up = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact") and pick_up:
			InventorySystem.pick_up(id)
			pick_up = false
			hide()


func _on_area_2d_mouse_entered() -> void:
	pick_up = true
	$Label.show()


func _on_area_2d_mouse_exited() -> void:
	pick_up = false
	$Label.hide()


func _on_item_area_mouse_entered() -> void:
	pick_up = true
	$"../Item2/Label".show()


func _on_item_area_mouse_exited() -> void:
	pick_up = false
	$"../Item2/Label".hide()
