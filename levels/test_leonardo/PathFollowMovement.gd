extends PathFollow2D

var speed = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Increment progress_ratio to move along the path
	progress_ratio += speed * delta * 0.01  # Adjust multiplier for speed control
	
	# Loop the path if the end is reached
	if progress_ratio >= 1.0:
		progress_ratio = 0.0
