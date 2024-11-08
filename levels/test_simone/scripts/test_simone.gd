extends Node2D

@export var test_list_task : Array[Task]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	TaskSystem.load_tasks(test_list_task)
