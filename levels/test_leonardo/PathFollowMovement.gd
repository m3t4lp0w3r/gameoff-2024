extends PathFollow2D

var speed = 20

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	progress_ratio += speed * delta * 0.01  
	
	if progress_ratio >= 1.0:
		progress_ratio = 0.0
