extends Control

var paused = false

func unpause():
	print("Unpause game")
	get_tree().paused = false
	visible = false
	paused = false
	
func pause():
	print("Pause game")
	get_tree().paused = true
	visible = true
	paused = true
	
	

func _process(delta):
	if Input.is_action_just_released("ui_cancel"):
		if(!paused):
			pause()
		else:
			unpause()		

func _on_Continue_pressed():
	unpause()

func _on_Restart_button_pressed():
	get_tree().paused = false
	Global._ready()
	get_tree().reload_current_scene()
	
func _on_Main_menu_button_pressed():
	get_tree().paused = false
	get_tree().change_scene("scenes/TitleScreen.tscn")

func _on_Quit_button_pressed():
	get_tree().quit()
