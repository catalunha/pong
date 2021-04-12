extends Area2D

func _on_WallUpArea2D_area_entered(area):
#	print("em WallUp")
#	print(area.name)
	if area.name == "BallArea2D":
		area.direction.y = -area.direction.y
