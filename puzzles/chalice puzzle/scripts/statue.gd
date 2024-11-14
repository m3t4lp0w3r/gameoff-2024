extends Node2D
@onready var text_prompt = $Label
@export var direction_statue : String

var position_statue = ["Front", "Back", "Left", "Right"]
var counter_position = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_interactable_player_enter() -> void:
	text_prompt.show()


func _on_interactable_player_exit() -> void:
	text_prompt.hide()


func _on_interactable_interacted() -> void:
	if counter_position < position_statue.size() - 1:
		counter_position += 1
		position_statue[counter_position]
	else:
		counter_position = 0
	print(position_statue[counter_position])
