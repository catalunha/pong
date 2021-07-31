extends Area2D

var speed = 200
var direction = Vector2(0,0)

func _ready():
	new_game()

func _process(delta):
	position += direction*speed*delta


func new_game():
	position = get_viewport_rect().size/2
	direction = Vector2(randf() * 2.0 - 1,0).normalized()
#

