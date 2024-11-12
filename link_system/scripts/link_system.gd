extends Node2D

@export var links : Array[SceneLink]
@export var player_ref : Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var last_link : String = GameState.last_player_link_id
	if last_link != null and player_ref != null:
		var link = get_link_by_id(last_link)
		if link != null:
			player_ref.global_position = link.position

func get_link_by_id(id : String) -> SceneLink:
	for link in links:
		if link.id == id:
			return link
	return null

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
