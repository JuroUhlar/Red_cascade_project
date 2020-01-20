extends Node2D


var player_is_close = false
var zoomed = false

func _ready():
	pass # Replace with function body.

func _on_player_detector_body_entered(body):
	if(body.is_in_group("player")):
		player_is_close = true
		$Hint.visible = true


func _on_player_detector_body_exited(body):
	if(body.is_in_group("player")):
		player_is_close = false
		$Hint.visible = false


func _process(delta):
	if(Input.is_action_just_pressed("interact") and player_is_close):
		if (!zoomed): zoom()
		else: unzoom()
		
func zoom():
	zoomed = true
	get_tree().paused = true
	$CanvasLayer/TextureRect.visible = true
	$CanvasLayer/Label.visible = true
	
func unzoom():
	zoomed = false
	get_tree().paused = false
	$CanvasLayer/TextureRect.visible = false
	$CanvasLayer/Label.visible = false