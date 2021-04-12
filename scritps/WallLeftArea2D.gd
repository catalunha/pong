extends Area2D

signal goal_left

func _on_WallLeftArea2D_area_entered(area):
	emit_signal("goal_left")
