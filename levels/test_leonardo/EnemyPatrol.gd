extends PathFollow2D

var speed = 100
var direction = 0.0
var fov

# Called when the node enters the scene tree for the first time.
func _ready():
	progress = 0
	fov = get_node("FieldOfView")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress += speed * delta
	# Adjust rotation to align with movement direction
	direction = get_angle_to_path()
	rotation = lerp(rotation, direction, 0.1)
	if fov:
		fov.rotation = rotation
#helper	
func get_angle_to_path() -> float:
	return global_position.angle_to_point(global_position + Vector2(cos(rotation), sin(rotation)))
