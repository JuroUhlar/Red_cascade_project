extends Control

func activate():
	$AnimationPlayer.play("Activate")

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("scenes/TitleScreen.tscn")
