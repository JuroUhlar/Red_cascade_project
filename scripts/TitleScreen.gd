extends CanvasLayer

func _ready():
	$VBoxContainer/NewGame.grab_focus()
	
func _physics_process(_delta):
	if $VBoxContainer/NewGame.is_hovered() == true:
		$VBoxContainer/NewGame.grab_focus()
		if Input.is_action_just_pressed("shoot") or Input.is_action_just_pressed("jump"):
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://scenes/Demo_Level.tscn")
	if $VBoxContainer/Quit.is_hovered() == true:
		$VBoxContainer/Quit.grab_focus()
		if Input.is_action_just_pressed("shoot") or Input.is_action_just_pressed("jump"):
			get_tree().quit()
			
	if $VBoxContainer/HowToPlay.is_hovered() == true:
		$VBoxContainer/HowToPlay.grab_focus()
		if Input.is_action_just_pressed("shoot") or Input.is_action_just_pressed("jump"):
			$Control_scheme.visible = true
		

func _on_NewGame_pressed():
# warning-ignore:return_value_discarded
	$click.play()
	get_tree().change_scene("res://scenes/Demo_Level.tscn")
	
func _on_Quit_pressed():
	$click.play()
	get_tree().quit()


func _on_HowToPlay_pressed():
	$click.play()
	$Control_scheme.visible = true


func _on_NewGame_focus_entered():
	$click.play()

func _on_HowToPlay_focus_entered():
	$click.play()

func _on_Quit_focus_entered():
	$click.play()
