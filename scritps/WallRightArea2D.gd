extends Area2D

signal goal_right

func _on_WallRightArea2D_area_entered(area):
	emit_signal("goal_right")
