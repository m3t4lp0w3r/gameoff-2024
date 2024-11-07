extends CharacterBody2D

@export var SPEED = 300.0
@export var interact_distance = 100

@onready var ray_cast = $RayCast2D

var raycast_target : Vector2

func _process(delta: float) -> void:
	
	ray_cast.target_position = raycast_target
	
	if Input.is_action_just_pressed("interact") :
		if ray_cast.is_colliding():
			var area_collider = ray_cast.get_collider()
			var parent = area_collider.get_parent()
			if parent != null and parent is Interactable:
				parent.interact()

func _physics_process(delta: float) -> void:

	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var x_direction := Input.get_axis("left", "right")
	var y_direction := Input.get_axis("up", "down")
	#if x_direction != 0 or y_direction != 0:
	velocity = Vector2(x_direction, y_direction) * SPEED
	
	if x_direction != 0 or y_direction != 0 :
		raycast_target = Vector2(x_direction, y_direction) * interact_distance
	
	velocity.move_toward(Vector2.ZERO, SPEED)

	move_and_slide()
