extends CanvasLayer

var score_left = 0
var score_right = 0
var timer = 0
var playing = true

signal playing(value)

func start_hud():
	$ScoreLeftLabel.text = "0"
	$ScoreRightLabel.text = "0"

func update_score_left():
	score_left += 1
	$ScoreLeftLabel.text = str(score_left)

func update_score_right():
	score_right += 1
	$ScoreRightLabel.text = str(score_right)

func start_timer():
	$Timer.start()

func _on_Timer_timeout():
	timer += 1
	$TimerLabel.text = str(timer)

func _on_Button_pressed():
	if playing:
		print("Stop")
		playing = false
		$Button.text = "Start"
	else:
		print("start")
		playing = true
		$Button.text = "Stop"
	emit_signal("playing",playing)
		
