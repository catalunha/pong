extends Area2D

func _on_WallDownArea2D_area_entered(area):
	if area.name == "BallArea2D":
		area.direction.y = -area.direction.y
