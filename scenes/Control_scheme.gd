extends TextureRect

func _physics_process(delta):
	if (Input.is_action_pressed("left_click") 
	or Input.is_action_pressed("ui_cancel")):
		visible = false

