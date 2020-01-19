extends Control

var paused = false

func _process(delta):
	if Input.is_action_just_released("ui_cancel"):
		if(!paused):
			print("Pause game")
			get_tree().paused = true
			visible = true
			paused = true
		else:
			print("Unpause game")
			get_tree().paused = false
			visible = false
			paused = false