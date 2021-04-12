extends Area2D

const SPEED = 200 # pixels/ second

func _process(delta):
	if Input.is_action_pressed("ui_player_left_move_up"):
		position.y = clamp(position.y - SPEED * delta,0+60,480-60)
#		position.y += -SPEED * delta
	if Input.is_action_pressed("ui_player_left_move_down"):
		position.y = clamp(position.y + SPEED * delta,0+60,480-60)
#		position.y += SPEED * delta

func _on_PlayerLeftArea2D_area_entered(area):
#	print("em Player")
#	print(area.name)
	if area.name == "BallArea2D":
		area.direction.x = -area.direction.x
		area.direction.y = randf() * 2.0 - 1
		area.direction = area.direction.normalized()
		area.speed *= 1.1

