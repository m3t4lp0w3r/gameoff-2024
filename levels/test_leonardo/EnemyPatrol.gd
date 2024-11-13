extends Node2D

var speed = 20
var fov_up
var fov_down
var fov_left
var fov_right

func _ready():
	# Get references to the field of view nodes within EnemyPatrol
	fov_up = $FieldOfViewUp
	fov_down = $FieldOfViewDown
	fov_left = $FieldOfViewLeft
	fov_right = $FieldOfViewRight

	# Set all field of view nodes to invisible initially
	fov_up.visible = false
	fov_down.visible = false
	fov_left.visible = false
	fov_right.visible = false

	# Start with initial "right" field of view
	set_fov("right")

	

# Set the active field of view based on checkpoint hit
func set_fov(dir: String):
	# Hide all field of view triangles
	fov_up.visible = false
	fov_down.visible = false
	fov_left.visible = false
	fov_right.visible = false

	# Show the selected field of view based on the direction
	if dir == "up":
		fov_up.visible = true
		fov_up.set_direction("up")
	elif dir == "down":
		fov_down.visible = true
		fov_down.set_direction("down")
	elif dir == "left":
		fov_left.visible = true
		fov_left.set_direction("left")
	elif dir == "right":
		fov_right.visible = true
		fov_right.set_direction("right")


# Checkpoint signals to activate different FOVs and movement
func _on_checkpoint_left_body_entered(body):
	if body == self:
		set_fov("left")

func _on_checkpoint_right_body_entered(body):
	if body == self:
		set_fov("right")

func _on_checkpoint_up_body_entered(body):
	if body == self:
		set_fov("up")

func _on_checkpoint_down_body_entered(body):
	if body == self:
		set_fov("down")

func _on_checkpoint_stop_body_entered(body):
	if body == self:
		speed = 0  # Stop movement temporarily (optional)
		await get_tree().create_timer(2.0).timeout
		speed = 20  # Resume movement (optional)
