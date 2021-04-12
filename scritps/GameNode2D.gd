extends Node2D

func _on_WallLeftArea2D_goal_left():
	$BallArea2D.new_game()
	$HUDCanvasLayer.update_score_right()

func _on_WallRightArea2D_goal_right():
	$BallArea2D.new_game()
	$HUDCanvasLayer.update_score_left()


func _on_HUDCanvasLayer_playing(value):
#	print("_on_HUDCanvasLayer_playing",value)
	if value:
		$BallArea2D.set_process(true)
		$PlayerLeftArea2D.set_process(true)
		$PlayerRightArea2D.set_process(true)
		$HUDCanvasLayer/Timer.start()
	else:
		$BallArea2D.set_process(false)
		$PlayerLeftArea2D.set_process(false)
		$PlayerRightArea2D.set_process(false)
		$HUDCanvasLayer/Timer.stop()
