extends Polygon2D

func set_direction(direction: String):
	match direction:
		"left":
			polygon = [
				Vector2(0, 0),
				Vector2(-30, 60),
				Vector2(30, 60)
			]
		"right":
			polygon = [
				Vector2(0, 0),
				Vector2(30, 60),
				Vector2(-30, 60)
			]
		"up":
			polygon = [
				Vector2(0, 0),
				Vector2(-60, -30),
				Vector2(60, -30)
			]
		"down":
			polygon = [
				Vector2(0, 0),
				Vector2(-60, 30),
				Vector2(60, 30)
			]
