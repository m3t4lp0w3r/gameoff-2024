extends CharacterBody2D


@export var speed = 300.0
@export var player_ref : CharacterBody2D

func _physics_process(delta: float) -> void:
	
	#var distance : float = position.distance_to(player_ref.position)
	var direction : Vector2 = position.direction_to(player_ref.position)
	#
	#velocity = direction * speed	
	#velocity.move_toward(Vector2.ZERO, speed)
	
	position = position.move_toward(player_ref.position, speed)
	move_and_slide()
