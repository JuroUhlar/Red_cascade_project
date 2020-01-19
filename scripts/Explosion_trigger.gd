extends Node2D

export (Array, NodePath) var trigger_target_Paths
export (NodePath) var player_path
	

func _on_Timer_timeout():
	activate_targets()
	var player = get_node(player_path)
	player.camera_shake_explosion()
	
func activate_targets():
	var targets = []
	for path in trigger_target_Paths:
		if (path.is_empty() == false):
			targets.append(get_node(path))
	for target in targets:
		target.activate()
